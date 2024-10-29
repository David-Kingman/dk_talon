os: windows
mode: command
app: remote desktop
-

# These commands are for using VSCode on Skynet without access to the command server

# Implement tags
tag(): user.tabs

# Search files
find [<user.text>]:
    key(ctrl-p)
    sleep(50ms)
    insert(text or "")

# Navigation
go <number>:
    key(ctrl-g)
    sleep(50ms)
    insert(number)b
    sleep(50ms)
    key(enter)

puff <number>:
    key(ctrl-g)
    sleep(50ms)
    insert(number)
    sleep(50ms)
    key(enter enter up)

# Sidebar
bar switch: key(ctrl-b)
show files: key(ctrl-shift-e)
show git: key(ctrl-shift-g)
show extensions: key(ctrl-shift-x)

# R
raid that: key(ctrl-enter)

raid line: 
    key(ctrl-l)
    key(ctrl-ENTER)
    key(escape)

raid <number>:
    key(ctrl-g)
    sleep(50ms)
    insert(number)
    sleep(50ms)
    key(enter)
    key(ctrl-l)
    key(ctrl-enter)
    key(escape)

file raid: 
    key(ctrl-a)
    key(ctrl-enter)
    key(escape)

terminal scrub: 
    key(ctrl-shift-p)
    insert("Terminal: Clear")
    key(enter)