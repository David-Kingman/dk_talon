# Desktop/window management
desktop: key(super-d)
window max: key(super-up)

# Windows search
finder: key(super-s)

# Fluent search hints
hint: key(ctrl-shift-f12)

# Activate/deactive Kinesic Mouse (regardless of current profile)
eye mouse: key(alt-1)

# Trigger Zoom Mouse
key(ctrl-alt-f1): tracking.zoom()

# Toggle quick pick
key(ctrl-alt-f2): user.quick_pick_show()

# Go to website
go {user.website}: user.open_url(website)
