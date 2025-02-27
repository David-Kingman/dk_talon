import time
from talon import Module, actions, cron

mod = Module()

mouth_pucker = None
mouth_pucker_job = None
mouth_pucker_start_time: 0

@mod.action_class
class Actions:        
    def trigger_mouth_pucker_job():
        """Trigger an action in response to a mouth_pucker"""
        global mouth_pucker_start_time, mouth_pucker_job, mouth_pucker
        mouth_pucker = True
        mouth_pucker_start_time = time.time()
        mouth_pucker_job = cron.interval("50ms", actions.user.mouth_pucker_helper)

    def mouth_pucker_helper():
        """Trigger an action after expression has been held for a certain interval of time"""
        mouth_pucker_current_time = time.time()
        mouth_pucker_time_difference = mouth_pucker_current_time - mouth_pucker_start_time
        if mouth_pucker_time_difference > 0.5:
            # print("Mouth Pucker")
            actions.user.mouse_toggle()

    def stop_mouth_pucker_job():
        """Stop triggering an action in response to a mouth_pucker"""
        global mouth_pucker, mouth_pucker_job
        mouth_pucker = False
        cron.cancel(mouth_pucker_job)
        mouth_pucker_job = None
        