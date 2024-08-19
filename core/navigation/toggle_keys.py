from talon import Module, actions

mod = Module()

held = False

@mod.action_class
class Actions:        
    def control_toggle():
        """Toggle holding down ctrl"""
        global held
        held = not held
        if held:
            actions.key("ctrl:down")
            actions.app.notify("Control On")
        else:
            actions.key("ctrl:up")
            actions.app.notify("Control Off")
            