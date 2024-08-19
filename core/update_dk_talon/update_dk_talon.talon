os: windows
mode: command
-

# Update Talon/user
update: user.update_dk_talon()

# Save file and update talon
shave:
    edit.save()
    user.update_dk_talon()
    