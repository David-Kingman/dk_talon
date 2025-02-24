os: windows
mode: command
-

# Update Talon custom file sets on work computer
^update$: user.update_custom_filesets("dk_talon")
^update community$: user.update_custom_filesets("community")
^update cursorless$: user.update_custom_filesets("cursorless-talon")
^update roku$: user.update_custom_filesets("roku-talon-shared")
^update ui elements$: user.update_custom_filesets("talon-ui-elements")

# Update words_to_replace files
^update words$: 
    user.update_file("F:/Projects/DavidKingman/talon_voice_repos/dk_talon/csv/words_to_replace.csv", "C:/Users/dkingman/AppData/Roaming/talon/user/community/settings")

^update home words$: 
    user.update_file("C:/Users/david/AppData/Roaming/talon/user/dk_talon/csv/words_to_replace.csv", "C:/Users/david/AppData/Roaming/talon/user/community/settings")                     

# Update app name files
^update names$: 
    user.update_file("F:/Projects/DavidKingman/talon_voice_repos/dk_talon/csv/app_name_overrides.windows.csv", "C:/Users/dkingman/AppData/Roaming/talon/user/community/core/app_switcher")

^update home names$: 
    user.update_file("C:/Users/david/AppData/Roaming/talon/user/dk_talon/csv/app_name_overrides.windows.csv", "C:/Users/david/AppData/Roaming/talon/user/community/core/app_switcher")
        