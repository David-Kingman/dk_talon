import time
from talon import Module, actions, cron

mod = Module()

mouth_press_right = None
mouth_press_right_job = None
mouth_press_right_start_time: 0

@mod.action_class
class Actions:        
    def trigger_mouth_press_right_job():
        """Trigger an action in response to a mouth_press_right"""
        global mouth_press_right_start_time, mouth_press_right_job, mouth_press_right
        mouth_press_right = True
        mouth_press_right_start_time = time.time()
        mouth_press_right_job = cron.interval("50ms", actions.user.mouth_press_right_helper)

    def mouth_press_right_helper():
        """Trigger an action after expression has been held for a certain interval of time"""
        mouth_press_right_current_time = time.time()
        mouth_press_right_time_difference = mouth_press_right_current_time -  mouth_press_right_start_time
        if mouth_press_right_time_difference > 1:
            # print("Mouth Press Right")
            actions.user.mouse_scroll_down()

    def stop_mouth_press_right_job():
        """Stop triggering an action in response to a mouth_press_right"""
        global mouth_press_right, mouth_press_right_job
        mouth_press_right = False
        cron.cancel(mouth_press_right_job)
        mouth_press_right_job = None
        