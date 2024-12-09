os: windows
language: en
mode: command
app: remote desktop
-

# These commands are for using VSCode on Skynet without access to the command server

# Implement tags
tag(): user.tabs

# Manage windows
new window: key(ctrl-shift-n)

# Manage tabs
tab close: key(ctrl-f4)

tab fresh: 
    key(ctrl-w)
    key(ctrl-shift-t)

# Search files
find [<user.text>]:
    key(ctrl-p)
    sleep(50ms)
    insert(text or "")

# Navigation
go <number>: user.go_vscode_line(number)

puff <number>:
    user.go_vscode_line(number)
    key(enter enter up)

show settings: key(ctrl-,)

close everything: user.run_vscode_command("View: Close All Editors")

# Search files
please [<user.text>]:
    key(ctrl-shift-p)
    sleep(50ms)
    insert(text or "")

# Sidebar
bar switch: key(ctrl-b)
show files: key(ctrl-shift-e)
show changes: key(ctrl-shift-g g)
show extensions: key(ctrl-shift-x)

# R
raid that: user.run_in_terminal()

raid line: 
    key(ctrl-l)
    user.run_in_terminal()

raid <number>:
    user.go_vscode_line(number)
    sleep(2s)
    key(ctrl-l)
    user.run_in_terminal()

file raid: 
    key(ctrl-a)
    sleep(1s)
    key(ctrl-enter)
    sleep(1s)
    key(escape)

file source: key(ctrl-shift-s)

shiny run: user.run_vscode_command("Shiny: Run Shiny App")

# Git
glare {user.git_commands_palette}: user.run_vscode_command(git_commands_palette)

glare blank:
    key(ctrl-shift-p)
    insert("Git: ")

glare submit: key(ctrl-enter)

# Terminals
terminal {user.vscode_terminal_commands}: user.run_vscode_command(vscode_terminal_commands)

abort: key(ctrl-c)