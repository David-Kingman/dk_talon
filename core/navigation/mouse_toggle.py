from talon import Module, actions, ctrl, cron

mod = Module()

@mod.action_class
class Actions:        
    def mouse_toggle():
        """Toggle between gaze control and zoom mouse"""
        actions.tracking.control_zoom_toggle()
        actions.tracking.control_gaze_toggle()
        actions.tracking.control_head_toggle()
        actions.tracking.control_toggle()
        