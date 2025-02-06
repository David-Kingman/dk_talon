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
    key(escape)

rent <user.cursorless_target>$:
    user.cursorless_command("setSelection", cursorless_target)
    sleep(500ms)
    edit.copy()
    sleep(500ms)
    key(escape)
    sleep(500ms)
    user.switcher_focus("remote desktop")
    sleep(500ms)
    edit.paste()
    sleep(500ms)
    key(enter)
    sleep(500ms)