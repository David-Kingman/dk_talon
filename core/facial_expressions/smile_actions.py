import time
from talon import Module, actions, cron

mod = Module()

smile = None
smile_job = None
smile_start_time: 0

@mod.action_class
class Actions:        
    def trigger_smile_job():
        """Trigger an action in response to a smile"""
        global smile_start_time, smile_job, smile
        smile = True
        smile_start_time = time.time()
        smile_job = cron.interval("16ms", actions.user.smile_helper)

    def smile_helper():
        """Trigger an action after expression has been held for a certain interval of time"""
        smile_current_time = time.time()
        smile_time_difference = smile_current_time -  smile_start_time
        if smile_time_difference > 2:
            # print("Smile")
            actions.user.switcher_menu()
            actions.user.stop_smile_job()

    def stop_smile_job():
        """Stop triggering an action in response to a smile"""
        global smile, smile_job
        smile = False
        cron.cancel(smile_job)
        smile_job = None
        