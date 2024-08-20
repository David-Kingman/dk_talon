from talon import Module, app
import shutil

mod = Module()

@mod.action_class
class Actions:
    def update_dk_talon():
        "Copies my custom files across to Talon/user"
        source_dir = r"F:/Projects/DavidKingman/dk_talon"
        destination_dir = r"C:/Users/dkingman/AppData/Roaming/talon/user/dk_talon"
        shutil.rmtree(destination_dir)
        shutil.copytree(source_dir, destination_dir, ignore=shutil.ignore_patterns(".git*"))
        app.notify("Update Completed")

    def update_mouse_settings():
        "Backs up my Kinesic Mouse Live commands"
        source = r"C:/Users/dkingman/AppData/Local/Xcessity Software Solutions/KinesicMouse Live/settings.xml"
        destination = r"F:/Projects/DavidKingman/dk_talon/settings"
        shutil.copy(source, destination)
        app.notify("Mouse Updated")