os: windows
app: Remote Desktop
app: rstudio
-

# Files
file new: key(ctrl-shift-n)
file open: key(ctrl-o)
file save: key(ctrl-s)
file close: key(ctrl-w)

# Navigation
go script: key(ctrl-1)
go console: key(ctrl-2)
go terminal: key(alt-shift-m)

line <user.number_string> :
    key(shift-alt-g)
    sleep(1000ms)
    insert(number_string)
    key(enter)
    
comment that: key(ctrl-shift-c)

# Plots
last plot: key(ctrl-alt-f11)
next plot: key(ctrl-alt-f12)

# Git
commit this: key(ctrl-alt-m)

# Terminal
abort: key(ctrl-c)