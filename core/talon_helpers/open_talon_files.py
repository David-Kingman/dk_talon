import os
from talon import Module, actions

mod = Module()

@mod.action_class
class Actions:        
    def open_talon_file(path: str):
        """Open a specified talon file in VSCode"""
        if os.path.exists(path):
            os.startfile(path)
        else:
            app.notify("File Doesn't Exist!") 
