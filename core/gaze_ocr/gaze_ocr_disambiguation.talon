mode: command
os: windows
-

# Improved disambiguation
pick <number_small>: user.choose_gaze_ocr_option(number_small)
numbers hide: user.hide_gaze_ocr_options()

# Move cursor to word
glance <user.timestamped_prose>$: user.move_cursor_to_word(timestamped_prose)