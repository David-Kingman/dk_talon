os: windows
mode: command
-

# Go to website
go {user.website}: user.open_url(website)

# Google text
{user.search_engine} <user.text>$: user.search_with_search_engine(search_engine, user.text)

# Google selected text
{user.search_engine} (that | this):
    text = edit.selected_text()
    user.search_with_search_engine(search_engine, text)

# Google using OCR
{user.search_engine} scene <user.prose_range>$: 
    user.perform_ocr_action("select", "", prose_range)
    sleep(500ms)
    text = edit.selected_text()
    user.search_with_search_engine(search_engine, text)

# Paste from clipboard directly into google search
{user.search_engine} paste: user.search_with_search_engine(search_engine, clip.text())

# Do InfoStore search on text
store hunt <user.text>$:
    user.open_url("https://tris42.sharepoint.com/sites/hmt_is_ptwp/Distributional%20Analysis/Forms/All.aspx?id=%2Fsites%2Fhmt%5Fis%5Fptwp%2FDistributional%20Analysis%2FEqualities%20and%20Living%20Standards%20Analysis%20%28ELSA%29&viewid=83789605%2Db5da%2D4c64%2Db6cc%2Df786128e882e")
    sleep(10s)
    key(alt-s)
    sleep(1s)
    insert(text)
    key(enter)

# Search the talon slack for text
slack <user.text>$:
    user.open_url("https://app.slack.com/client/T7FPSMV8F")
    sleep(5s)
    key(ctrl-f)
    sleep(1s)
    edit.delete_line()
    insert(text)
    key(enter)