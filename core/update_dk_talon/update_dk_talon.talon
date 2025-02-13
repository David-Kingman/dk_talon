os: windows
mode: command
-

# Update Talon/user
^update$: user.update_custom_filesets("dk_talon")
^update community$: user.update_custom_filesets("community")
^update cursorless$: user.update_custom_filesets("cursorless-talon")
^update words$: user.update_file("dk_talon/csv/words_to_replace.csv", "community/settings")
^update app names$: user.update_file("dk_talon/csv/app_name_overrides.windows.csv", "community/core/app_switcher")

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
        
# Update Kinesic Mouse Live settings
^update mouse$: User.update_mouse_settings()
