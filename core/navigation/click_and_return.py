from talon import Module, actions, ctrl

mod = Module()

@mod.action_class
class Actions:        
    def click_and_return(x_target: int, y_target: int):
        """Move cursor, left click, and return to original position"""
        x, y = ctrl.mouse_pos()
        actions.mouse_move(x_target, y_target)
        actions.sleep("1s")
        ctrl.mouse_click(button = 0)
        actions.sleep("1s")
        actions.mouse_move(x, y)
