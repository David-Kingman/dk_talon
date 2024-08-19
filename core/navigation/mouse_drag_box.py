from talon import Module, actions, ctrl

mod = Module()

@mod.action_class
class Actions:        
    
    def start_position():
        """Copy the current mouse position coordinates"""
        global start_position
        start_position = ctrl.mouse_pos()
    
    def mouse_drag_box():
        """Drag to the new mouse position"""
        end_position = ctrl.mouse_pos()
        
        actions.mouse_move(start_position[0], start_position[1])
        actions.sleep("1s")
        ctrl.mouse_click(button = 0, down = True)
        actions.sleep("1s")
        actions.mouse_move(end_position[0], end_position[1])
        actions.sleep("1s")
        ctrl.mouse_click(button = 0, up = True)

    def mouse_copy_box():
        """Drag to the new mouse position and copy"""
        actions.user.mouse_drag_box()
        actions.edit.copy()
        actions.app.notify("Copied!")
