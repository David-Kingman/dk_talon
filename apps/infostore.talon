os: windows
mode: command
title: /sharepoint.com/
-

# Use built in search function
find <user.text>$:
    key(alt-s)
    sleep(500ms)
    edit.delete_line()
    insert(text)
    key(enter)