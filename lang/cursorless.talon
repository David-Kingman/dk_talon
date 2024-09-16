os: windows
mode: command
app: vscode
-

# Reformat Cursorless targets
<user.formatters> <user.cursorless_target>: user.cursorless_reformat(cursorless_target, formatters)

replace <user.cursorless_target> with <user.text>$:
    user.cursorless_command("setSelection", cursorless_target)
    edit.delete()
    insert(text)

# Run R code
raid <user.cursorless_target>$:
    user.cursorless_command("setSelection", cursorless_target)
    key(ctrl-enter)
