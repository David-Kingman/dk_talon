os: windows
mode: command
-

# Restart talon
^talon restart$: user.talon_restart()

# Open a talon file in an editor
test: user.open_talon_file("F:/Projects/DavidKingman/talon_voice_repos/dk_talon/core/lists/vocabulary.talon-list")
tasks: user.open_talon_file("C:/Users/dkingman/OneDrive - TrIS/Desktop/to_do_list.md")