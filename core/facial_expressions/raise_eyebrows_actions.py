import time
from talon import Module, actions, cron

mod = Module()

raise_eyebrows = None
raise_eyebrows_job = None
raise_eyebrows_start_time: 0

@mod.action_class
class Actions:        
    def trigger_raise_eyebrows_job():
        """Trigger an action in response to a raise_eyebrows"""
        global raise_eyebrows_start_time, raise_eyebrows_job, raise_eyebrows
        raise_eyebrows = True
        raise_eyebrows_start_time = time.time()
        raise_eyebrows_job = cron.interval("50ms", actions.user.raise_eyebrows_helper)

    def raise_eyebrows_helper():
        """Trigger an action after expression has been held for a certain interval of time"""
        raise_eyebrows_current_time = time.time()
        raise_eyebrows_time_difference = raise_eyebrows_current_time -  raise_eyebrows_start_time
        if raise_eyebrows_time_difference > 1:
            # print("Raise Eyebrows")
            actions.user.mouse_scroll_up()

    def stop_raise_eyebrows_job():
        """Stop triggering an action in response to a raise_eyebrows"""
        global raise_eyebrows, raise_eyebrows_job
        raise_eyebrows = False
        cron.cancel(raise_eyebrows_job)
        raise_eyebrows_job = None
        