os: windows
not mode: sleep
-

dictate:
    mode.disable("sleep")
    mode.disable("command")
    mode.enable("dictation")
    user.code_clear_language_mode()
    mode.disable("user.gdb")

command:
    mode.disable("sleep")
    mode.disable("dictation")
    mode.enable("command")
    