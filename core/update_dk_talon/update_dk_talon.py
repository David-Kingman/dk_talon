from talon import module
import shutil

mod = Module()

@mod.action_class
class Actions:
    def update_dk_talon():
        "Copies my custom files across to Talon/user"
        source_dir = r"F:\Projects\DavidKingman\dk_talon"
        destination_dir = r"C:\Users\dkingman\AppData\Roaming\talon\user"
        shutil.copytree(source_dir, destination_dir)
