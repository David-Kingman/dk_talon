language: en
os: windows
mode: command
-

# Redefine right mouse click
reach: mouse_click(1)

# Redefine right click using gaze ocr
reach <user.timestamped_prose>$: user.right_click_text(timestamped_prose)

# Customise dragging commands
drain: user.mouse_drag(0)
drat: user.mouse_drag_end()
        
# Copy mouse coordinates
get cords: user.copy_mouse_position()

# Mouse drag box
pick: user.start_position()
take box: user.mouse_drag_box()
copy box: user.mouse_copy_box()