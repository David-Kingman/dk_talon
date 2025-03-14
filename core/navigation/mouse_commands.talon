language: en
os: windows
mode: command
-

# Redefine right mouse click
^reach$: mouse_click(1)

# Redefine right click using gaze ocr
^reach <user.timestamped_prose>$: user.right_click_text(timestamped_prose)

# Customise dragging commands
^drain$: user.mouse_drag(0)
^drat$: user.mouse_drag_end()
        
# Copy mouse coordinates
^get cords$: user.copy_mouse_position()

# Jump cursor to gaze location
^nudge$: user.move_cursor_to_gaze_point()
