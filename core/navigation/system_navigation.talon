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
launch Skynet: key(ctrl-super-9)

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

# Quit talon
^quit talon$:
    mouse_move(3508, 23)
    sleep(3s)
    mouse_click(0)
    sleep(3s)    
    mouse_move(3594, 378)
    sleep(3s)
    mouse_click(0)