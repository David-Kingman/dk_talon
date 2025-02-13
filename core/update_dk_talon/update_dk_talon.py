from talon import Module, app
import shutil, os

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

    def update_file(origin_file: str, destination_folder: str):
        "Copies individual files from my personal repo to talon/user"
        if os.path.exists(origin_file) and os.path.exists(destination_folder):
            shutil.copy(origin_file, destination_folder)
            app.notify("Update Completed")
        else:
            app.notify("Update Failed: File Doesn't Exist!")
            