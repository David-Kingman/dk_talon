os: windows
mode: command
-

# Expressions I can comfortably make:
# smile
# blink
# raise_eyebrows
# mouth_press_right
# mouth_pucker
# jaw_open
# gaze_down_left
# gaze_down_right
# gaze_out_left
# gaze_out_right
# gaze_up_left
# gaze_up_right

# raise_eyebrows - scroll up 
face(raise_eyebrows:start): user.trigger_raise_eyebrows_job()
face(raise_eyebrows:stop): user.stop_raise_eyebrows_job()

# mouth_press_right - scroll down
face(mouth_press_right:start): user.trigger_mouth_press_right_job()
face(mouth_press_right:stop): user.stop_mouth_press_right_job()

# smile
face(smile:start): user.trigger_smile_job()
face(smile:stop): user.stop_smile_job()