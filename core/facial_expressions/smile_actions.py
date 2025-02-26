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
        if smile_time_difference > 2.5:
            # actions.user.mouse_scroll_down()
            print("Smile")

    def stop_smile_job():
        """Stop triggering an action in response to a smile"""
        global smile, smile_job
        smile = False
        cron.cancel(smile_job)
        smile_job = None
    
    # def smile(function: str, continuous: bool, delay: float, repeat_interval: str):
    #     """Trigger an action in response to a facial expression"""
    #     global expression
    #     global expression_job 
    #     global start_time
    #     expression = True
    #     start_time = time.time()
    #     expression_job = cron.interval(repeat_interval, lambda: actions.user.while_holding_expression(function, continuous, delay))

    # def hold_expression_off():Save
    #     """Terminate current action if the expression stops"""
    #     global expression
    #     expression = False
    #     cron.cancel(expression_job)
    #     expression_job = None

    # def while_holding_expression(function: str, continuous: bool, pause: float): 
    #     """Execute action once expression has been held for a minimum amount of time"""
    #     current_time = time.time()
    #     time_difference = current_time - start_time
    #     if expression and continuous and time_difference > pause:
    #         exec(function)
    #     elif expression and not continuous and time_difference > pause:
    #         exec(function)
    #         cron.cancel(expression_job)            
    #         expression_job = None

    # def scroll_down_on(delay: float, repeat_interval: str):
    #     """Scroll down using a facial expression"""
    #     global scroll_down_expression, scroll_down_start_time, scroll_down_expression_job
    #     scroll_down_expression = True
    #     scroll_down_start_time = time.time()
    #     scroll_down_expression_job = cron.interval(repeat_interval, lambda: actions.user.while_scrolling_down(delay))

    # def scroll_down_off():
    #     """Terminate scrolling down if the expression stops"""
    #     global scroll_down_expression
    #     scroll_down_expression = False
    #     cron.cancel(scroll_down_expression_job)
    #     scroll_down_expression_job = None

    # def while_scrolling_down(delay: float): 
    #     """Execute scrolling down once expression has been held for a minimum amount of time"""
    #     current_time = time.time()
    #     time_difference = current_time - scroll_down_start_time
    #     if scroll_down_expression and time_difference > delay:
    #         actions.user.mouse_scroll_down()

    # def scroll_up_on(delay: float, repeat_interval: str):
    #     """Trigger an action in response to a facial expression"""
    #     global scroll_up_expression, scroll_up_start_time, scroll_up_expression_job
    #     scroll_up_expression = True
    #     scroll_up_start_time = time.time()
    #     scroll_up_expression_job = cron.interval(repeat_interval, lambda: actions.user.while_scrolling_up(delay))

    # def scroll_up_off():
    #     """Terminate current action if the expression stops"""
    #     global scroll_up_expression
    #     scroll_up_expression = False
    #     cron.cancel(scroll_up_expression_job)
    #     scroll_up_expression_job = None

    # def while_scrolling_up(delay: float): 
    #     """Execute action once expression has been held for a minimum amount of time"""
    #     current_time = time.time()
    #     time_difference = current_time - scroll_up_start_time
    #     if scroll_up_expression and time_difference > delay:
    #         actions.user.mouse_scroll_up()