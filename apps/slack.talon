os: windows
and app.name: Google Chrome
and title: /slack/
-

# Searching - requires a change in the Slack search preferences
find <user.text>$:
    key(ctrl-f)
    sleep(500ms)
    edit.delete_line()
    insert(text)
    key(enter)