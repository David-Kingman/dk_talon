os: windows
mode: command
-

# Update Talon/user
^update$: user.update_custom_filesets("dk_talon")
^update community$: user.update_custom_filesets("community")
^update cursorless$: user.update_custom_filesets("cursorless-talon")
^update words$: user.update_file("dk_talon/csv/words_to_replace.csv", "community/settings")
^update app names$: user.update_file("dk_talon/csv/app_name_overrides.windows.csv", "community/core/app_switcher")

# Update Kinesic Mouse Live settings
^update mouse$: User.update_mouse_settings()
