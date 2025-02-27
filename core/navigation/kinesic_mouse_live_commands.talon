os: windows
and not mode: sleep
-

# Activate/deactive Kinesic Mouse (regardless of current profile)
mouse toggle: key(ctrl-f2)

# Toggle between zoom mouse and control mouse
key(ctrl-shift-f8): user.mouse_toggle()

# Change profiles
eye mouse: key(ctrl-alt-2)
full mouse: key(ctrl-alt-3)
scroll mouse: key(ctrl-alt-4)