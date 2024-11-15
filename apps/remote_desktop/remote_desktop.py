from talon import Module, actions

mod = Module()

@mod.action_class
class Actions:        
    def go_vscode_line(number: int) -> int:
        """Navigate to a line number in VSCode"""
        actions.key("ctrl-g")
        actions.sleep("50ms")
        actions.insert(number)
        actions.sleep("50ms")
        actions.key("enter")

    def run_vscode_command(command: str) -> str:
        """Drop a command string into the VSCode command palette"""
        actions.key("ctrl-shift-p")
        actions.sleep("50ms")
        actions.insert(command)
        actions.sleep("50ms")
        actions.key("enter")
    
    def run_in_terminal():
        """Copy a selection from an editor, drop it in the terminal and execute it, then return focus to the editor"""
        actions.key("ctrl-c")
        actions.key("escape")
        actions.user.run_vscode_command("Terminal: Paste into Active Terminal")
        actions.sleep("5s")
        actions.key("enter")
        actions.user.run_vscode_command("View: Focus Active Editor Group")