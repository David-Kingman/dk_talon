os: windows
app: Remote Desktop
app: rstudio
-

# Navigation
go script: key(ctrl-1)
go console: key(ctrl-2)

go line <user.number_string> :
    key(shift-alt-g)
    sleep(1000ms)
    insert(number_string)
    key(enter)
    