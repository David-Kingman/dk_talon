os: windows
mode: command
app: vscode
-

# Implement tags
tag(): user.tabs

# Window management
new project: key(ctrl-shift-n)

# Search files
find [<user.text>]:
    user.vscode("workbench.action.quickOpen")
    sleep(50ms)
    insert(text or "")

find (pace | paste):
    user.vscode("workbench.action.quickOpen")
    sleep(50ms)
    edit.paste()

# Navigation
puff <number>:
    edit.jump_line(number)
    sleep(50ms)
    key(enter enter up)

space <number>:
    edit.jump_line(number)
    sleep(50ms)
    key(enter)