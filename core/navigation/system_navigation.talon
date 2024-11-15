os: windows
mode: command
-

# Switch between two most recent applications
switch: 
    key(alt:down)
    key(tab)
    key(alt:up)

# Open clipboard manager
clip: key(super-v)

# Get computer name
# test: user.get_computer_name()

# Restart computer
restart computer:
    mouse_move(31, 30)
    sleep(3s)
    mouse_click(0)
    sleep(3s)
    mouse_move(29, 1304)
    sleep(3s)
    mouse_click(0)
    sleep(3s)
    mouse_move(113, 1205)
    sleep(3s)
    mouse_click(0)

# Shutdown computer
shutdown computer:
    mouse_move(31, 30)
    sleep(3s)
    mouse_click(0)
    sleep(3s)
    mouse_move(29, 1304)
    sleep(3s)
    mouse_click(0)
    sleep(3s)
    mouse_move(113, 1135)
    sleep(3s)
    mouse_click(0)

# Launch Skynet
launch Skynet:
    mouse_move(913, 14)
    sleep(3s)
    mouse_click(0)
    sleep(5s)
    key(left enter)

# Disconnects Skynet
disconnect skynet:
    mouse_move(31, 30)
    sleep(3s)
    mouse_click(0)
    sleep(3s)
    mouse_move(29, 1304)
    sleep(3s)
    mouse_click(0)
    sleep(3s)
    mouse_move(113, 1205)
    sleep(3s)
    mouse_click(0)