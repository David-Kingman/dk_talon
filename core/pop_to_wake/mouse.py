from talon import Context, Module, actions, app, cron, ctrl, ui
from talon_plugins import eye_mouse
from talon_plugins.eye_mouse import config, toggle_control

mod = Module()
ctx = Context()

mod.list("mouse_click", desc="Available mouse clicks")
ctx.lists["self.mouse_click"] = {
    "left": "left",
    "right": "right",
    "middle": "middle",
    "mid": "middle",
    "double": "double",
    "dub": "double",
    "triple": "triple",
    "trip": "triple",
    "move": "move",
    "control": "control",
}

setting_scroll_step = mod.setting("scroll_step", type=float, default=0.02)

scroll_job = None
gaze_job = None
scroll_speed = 100
scroll_dir = 1
mouse_control = False
zoom_control = True


@mod.action_class
class Actions:
    def mouse_on_pop():
        """Mouse on pop handler"""
        if stop_scroll():
            # Make sure scrolling has stopped so that click doesn't miss
            actions.sleep("50ms")
        # Zoom mouse is enabled
        if actions.user.zoom_mouse_enabled():
            actions.user.zoom_mouse_on_pop()
        # Normal click when using control mouse
        elif config.control_mouse:
            ctrl.mouse_click(button=0)

    def mouse_click(action: str):
        """Click mouse button"""
        stop_scroll()
        if not actions.user.zoom_mouse_idle():
            actions.user.zoom_mouse_click(action)
            return
        if action == "left":
            ctrl.mouse_click(button=0)
        elif action == "right":
            ctrl.mouse_click(button=1)
        elif action == "middle":
            ctrl.mouse_click(button=2)
        elif action == "double":
            ctrl.mouse_click(button=0)
            ctrl.mouse_click(button=0)
        elif action == "triple":
            ctrl.mouse_click(button=0)
            ctrl.mouse_click(button=0)
            ctrl.mouse_click(button=0)
        elif action == "control":
            actions.key("ctrl:down")
            ctrl.mouse_click(button=0)
            actions.key("ctrl:up")

    def mouse_stop():
        """Stops mouse action"""
        # Close zoomed in view
        if stop_zoom():
            return True
        # Stop scroll
        if stop_scroll():
            return True
        return False

    def mouse_scroll(direction: str, times: int):
        """Scrolls"""
        stop_zoom()
        amount = times
        if direction == "up":
            amount = -amount
        actions.mouse_scroll(by_lines=True, y=amount)

    def mouse_scrolling(direction: str):
        """Toggle scrolling continuously"""
        global scroll_job, scroll_dir
        stop_zoom()
        if direction == "up":
            new_scroll_dir = -1
        else:
            new_scroll_dir = 1
        # Issuing a scroll in the same direction as existing aborts it.
        if scroll_job != None and scroll_dir == new_scroll_dir:
            stop_scroll()
            return
        scroll_dir = new_scroll_dir
        if scroll_job is None:
            scroll_continuous_helper()
            scroll_job = cron.interval("30ms", scroll_continuous_helper)

    def mouse_scroll_speed_set(speed: int):
        """Set scroll speed"""
        if speed > 50:
            speed = 50
        global scroll_speed
        scroll_speed = speed * 10
        actions.user.mouse_scroll_speed_notify()

    def mouse_scroll_speed_increase():
        """Increase scroll speed"""
        global scroll_speed
        scroll_speed = scroll_speed + 20
        actions.user.mouse_scroll_speed_notify()

    def mouse_scroll_speed_decrease():
        """Decrease scroll speed"""
        global scroll_speed
        scroll_speed = scroll_speed - 20
        actions.user.mouse_scroll_speed_notify()

    def mouse_scroll_speed_notify():
        """Notify scroll speed"""
        actions.user.notify("Mouse scroll speed: {}%".format(scroll_speed))

    def mouse_gaze_scroll():
        """Starts gaze scroll"""
        global gaze_job
        stop_scroll()
        gaze_job = cron.interval("60ms", scroll_gaze_helper)

    def mouse_calibrate():
        """Start calibration"""
        eye_mouse.calib_start()

    def mouse_toggle_control_mouse():
        """Toggles control mouse"""
        global mouse_control
        mouse_control = not config.control_mouse and eye_mouse.tracker is not None
        toggle_control(mouse_control)
        actions.user.notify(f"Control mouse: {mouse_control}")

    def mouse_toggle_zoom_mouse():
        """Toggles zoom mouse"""
        global zoom_control
        zoom_control = actions.user.zoom_mouse_toggle()
        actions.user.notify(f"Zoom mouse: {zoom_control}")

    def mouse_wake():
        """Enable control mouse and zoom mouse to earlier state"""
        toggle_control(mouse_control)
        actions.user.zoom_mouse_toggle(zoom_control)

    def mouse_sleep():
        """Disables control mouse, zoom mouse and scroll"""
        stop_scroll()
        toggle_control(False)
        actions.user.zoom_mouse_toggle(False)
        # Release all held buttons
        for button in ctrl.mouse_buttons_down():
            ctrl.mouse_click(button=button, up=True)

    def mouse_center_window():
        """move the mouse cursor to the center of the currently active window"""
        rect = ui.active_window().rect
        ctrl.mouse_move(rect.center.x, rect.center.y)


def stop_zoom():
    if not actions.user.zoom_mouse_idle():
        actions.user.zoom_mouse_cancel()
        return True
    return False


def stop_scroll():
    global scroll_job, gaze_job
    return_value = scroll_job or gaze_job
    if scroll_job:
        cron.cancel(scroll_job)
        scroll_job = None
    if gaze_job:
        cron.cancel(gaze_job)
        gaze_job = None
    return return_value


def scroll_continuous_helper():
    if actions.user.zoom_mouse_idle():
        x, y = ctrl.mouse_pos()
        screen = get_screen_for_cursor(x, y)
        if screen is None:
            return
        p = scroll_speed / 100
        amount = int(p * screen.rect.height * setting_scroll_step.get())
        amount = max(amount, 1)
        actions.mouse_scroll(by_lines=False, y=amount * scroll_dir)


def scroll_gaze_helper():
    if actions.user.zoom_mouse_idle():
        x, y = ctrl.mouse_pos()
        window = get_window_for_cursor(x, y)
        if window is None:
            return
        rect = window.rect
        midpoint = rect.y + rect.height / 2
        amount = int(((y - midpoint) / (rect.height / 10)) ** 3)
        actions.mouse_scroll(by_lines=False, y=amount)


def get_screen_for_cursor(x: float, y: float):
    for screen in ui.screens():
        if screen.rect.contains(x, y):
            return screen
    return None


def get_window_for_cursor(x: float, y: float):
    # on windows, check the active_window first since ui.windows() is not z-ordered
    if app.platform == "windows" and ui.active_window().rect.contains(x, y):
        return ui.active_window()

    for window in ui.windows():
        if window.rect.contains(x, y):
            return window

    return None


app.register("launch", lambda: actions.user.mouse_wake())
