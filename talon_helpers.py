from talon import Module, Context, actions, app, registry, scope, ui, speech_system
import os

mod = Module()
ctx_win = Context()
ctx_win.matches = r"""
os: windows
"""

@mod.action_class
class Actions:
    def talon_restart():
        """Quit and relaunch the Talon app"""

@ctx_win.action_class("user")
class WinUserActions:
    def talon_restart():
        talon_app = ui.apps(pid=os.getpid())[0]
        os.startfile(talon_app.exe)
        talon_app.quit()
