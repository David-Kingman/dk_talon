from talon import Module, app
import shutil 

mod = Module()

@mod.action_class
class Actions: 
    def update_custom_filesets(folder: str):
        "Copies my custom files across to Talon/user from the F: drive"
        source_dir ="F:/Projects/DavidKingman/talon_voice_repos/" + folder
        destination_dir ="C:/Users/dkingman/AppData/Roaming/talon/user/" + folder
        shutil.rmtree(destination_dir)
        shutil.copytree(source_dir, destination_dir, ignore = shutil.ignore_patterns(".git*"))
        app.notify("Update Completed")

    def update_subfolders(origin: str, destination: str):
        "Copies specific files across from the F: drive to talon/user"
        source_dir ="F:/Projects/DavidKingman/talon_voice_repos/" + origin
        destination_dir ="C:/Users/dkingman/AppData/Roaming/talon/user/" + destination
        shutil.rmtree(destination_dir)
        shutil.copytree(source_dir, destination_dir, ignore = shutil.ignore_patterns(".git*"))
        app.notify("Update Completed")

    def update_file(file: str, destination: str):
        "Copies individual files across from the F: drive to talon/user"
        source_file ="F:/Projects/DavidKingman/talon_voice_repos/" + file
        destination ="C:/Users/dkingman/AppData/Roaming/talon/user/" + destination
        shutil.copy(source_file, destination)
        app.notify("Update Completed")

    def update_mouse_settings():
        "Backs up my Kinesic Mouse Live commands"
        source = r"C:/Users/dkingman/AppData/Local/Xcessity Software Solutions/KinesicMouse Live/settings.xml"
        destination = r"F:/Projects/DavidKingman/dk_talon/settings"
        shutil.copy(source, destination)
        app.notify("Mouse Updated")