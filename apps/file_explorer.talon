mode: command
os: windows
and app.name: Windows Explorer
os: windows
and app.exe: explorer.exe
-

# Searching
find <user.text>$:
    key(f3)
    sleep(500ms)
    edit.delete_line()
    insert(text)
    key(enter)

# Modify objects using OCR
grab <user.timestamped_prose>$:
    user.modifier_click_text("ctrl", timestamped_prose)

chuck <user.timestamped_prose>$:
    user.modifier_click_text("ctrl", timestamped_prose)
    sleep(5s)
    key(ctrl-d)

copy <user.timestamped_prose>$:
    user.modifier_click_text("ctrl", timestamped_prose)
    sleep(5s)
    key(ctrl-c)
    app.notify("Copied!")

copy path <user.timestamped_prose>$:
    user.modifier_click_text("ctrl", timestamped_prose)
    sleep(5s)
    key(alt h c p)
    app.notify("Copied!")

rename <user.timestamped_prose>$:
    user.modifier_click_text("ctrl", timestamped_prose)
    sleep(5s)
    key(f3)

cut <user.timestamped_prose>$:
    user.modifier_click_text("ctrl", timestamped_prose)
    sleep(5s)
    key(ctrl-x)

get properties <user.timestamped_prose>$:
    user.modifier_click_text("ctrl", timestamped_prose)
    sleep(5s)
    key(alt h p r enter)

# Modify individual objects
copy: 
    key(ctrl-c)
    app.notify("Copied!")

copy path:
    key(alt h c p)
    app.notify("Copied!")

rename: key(f3)

cut: key(ctrl-x)

get properties: key(alt h p r enter)

select all: key(ctrl-a)

chuck: key(ctrl-d)

paste: key(ctrl-v)

hint: key(alt)

go address: key(ctrl-l)

copy address:
    key(ctrl-l)
    key(ctrl-c)

    