from talon import Module
import shutil

mod = Module()

@mod.action_class
class Actions:
    def update_dk_talon():
        "Copies my custom files across to Talon/user"
        source_dir = r"F:/Projects/DavidKingman/dk_talon"
        destination_dir = r"C:/Users/dkingman/AppData/Roaming/talon/user/dk_talon"
        shutil.copytree(source_dir, destination_dir, dirs_exist_ok=True)
        print("Talon Updated")
