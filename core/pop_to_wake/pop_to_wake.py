from talon import Module, actions
import time

mod = Module()
setting = mod.setting("sleep_word", type=str)
time_last_pop = 0

@mod.action_class
class Actions:
    def talon_wake():
        """Wake Talon from sleep"""
        actions.speech.enable()
        actions.user.mouse_wake()

    def talon_wake_on_pop():
        """Use pop sound to wake from sleep"""
        global time_last_pop
        delta = time.time() - time_last_pop
        if delta >= 0.1 and delta <= 0.3:
            actions.user.talon_wake()
        time_last_pop = time.time()
