os: windows
-

# Expressions I can make easily:
# smile
# blink
# raise_eyebrows
# mouth_pucker
# jaw_open
# gaze_down_left
# gaze_down_right
# gaze_out_left
# gaze_out_right
# gaze_up_left
# gaze_up_right

# Test facial expressions
# face(gaze_xy): print("gaze {x} {y}")
 
# raise_eyebrows - scroll up
face(raise_eyebrows:start): user.trigger_raise_eyebrows_job()
face(raise_eyebrows:stop): user.stop_raise_eyebrows_job()

# mouth_pucker - scroll down
face(mouth_pucker:start): user.trigger_mouth_pucker_job()
face(mouth_pucker:stop): user.stop_mouth_pucker_job()