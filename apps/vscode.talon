os: windows
app: remote desktop
app: visual studio code
-
# Some of these commands depend on customized key mappings in the keybindings.json file

# File Management
new file: key(ctrl-n)
save file: key(ctrl-s)
close file: key(ctrl-f4)

# Navigation

jump <user.number_string>:
    key(ctrl-g)
    insert(number_string)
    key(return)
    
tag(): user.tabs    

go bash: key(ctrl-')
go script: key(ctrl-1)