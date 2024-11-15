from talon import Module, actions
import os

mod = Module()

@mod.action_class
class Actions:        
    def get_computer_name():
        """Retrieve the device name in windows"""
        name = os.environ['COMPUTERNAME']
        actions.app.notify(name)