os: windows
language: en
-

# Redefine right mouse click
reach: mouse_click(1)

# Redefine right click using gaze ocr
reach <user.timestamped_prose>$: user.right_click_text(timestamped_prose)
