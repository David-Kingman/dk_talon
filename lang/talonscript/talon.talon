os: windows
mode: command
app: vscode
-

# List commands
funk {user.talon_functions}: 
    insert(talon_functions + "()")
    key(left)

# Talon lists and captures
capture text: insert("<user.text>$")
capture prose: insert("<user.prose>$")
capture cursor: insert("<user.cursorless_target>$")

list <user.prose>$:
    insert("{user.")
    user.insert_formatted(prose, "SNAKE_CASE")
    insert("}")
    
# File templates
list new <user.prose>$:
    app.tab_open()
    insert("list: user.")
    user.insert_formatted(prose, "SNAKE_CASE")
    key(enter)
    insert("-")
    key(enter enter)

talon new:
    text = """os: windows
    mode: command
    -
    """
    app.tab_open()
    insert(text)
    key(enter)
