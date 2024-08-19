os: windows
mode: command
-

# Switch between two most recent applications
switch: 
    key(alt:down)
    key(tab)
    key(alt:up)

# Restart computer
restart computer:
    mouse_move(31, 30)
    sleep(1s)
    mouse_click(0)
    sleep(1s)
    mouse_move(29, 1304)
    sleep(1s)
    mouse_click(0)
    sleep(1s)
    mouse_move(113, 1205)
    sleep(1s)
    mouse_click(0)

# Shutdown computer
shutdown computer:
    mouse_move(31, 30)
    sleep(1s)
    mouse_click(0)
    sleep(1s)
    mouse_move(29, 1304)
    sleep(1s)
    mouse_click(0)
    sleep(1s)
    mouse_move(113, 1135)
    sleep(1s)
    mouse_click(0)

# Launch Skynet
launch Skynet:
    mouse_move(1026, 21)
    sleep(1s)
    mouse_click(0)
    sleep(5s)
    key(left enter)

# Disconnects Skynet
disconnect skynet:
    mouse_move(31, 30)
    sleep(1s)
    mouse_click(0)
    sleep(1s)
    mouse_move(29, 1304)
    sleep(1s)
    mouse_click(0)
    sleep(1s)
    mouse_move(113, 1205)
    sleep(1s)
    mouse_click(0)