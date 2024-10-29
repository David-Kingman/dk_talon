os: windows
app: Microsoft word
app: Google Chrome
-

# File Management
new file: key(ctrl-n)
save file: key(ctrl-s)
open: key(ctrl-o)
print: key(ctrl-p)

# Formatting
bold: key(ctrl-b)
italic: key(ctrl-i)
underline: key(ctrl-u)
font smaller: key(ctrl-[)
font bigger: key(ctrl-])
align centre: key(ctrl-e)
align left: key(ctrl-l)
align right: key(ctrl-r)
justify: key(ctrl-j)
switcher: key(shift-f3)

# Insert
bullets: key(ctrl-shift-l)
hyperlink: key(ctrl-k)
insert table: key(alt n t i)

# Tables
next cell: key(alt-down)
select next cell: key(tab)
last cell: key(alt-up)
select last cell: key(shift-tab)
next row: key(alt-down alt-down)

# Paste as plain text
paste plain: key(ctrl-alt-v up return)
paste text: key(ctrl-shift-v)

# Copy a Whole Line
grab line: 
    key(shift-end ctrl-c)
    sleep(1000ms)
    key(up)

# Grab Link
fetch link:
    mouse_move(3729, 430)
    sleep(1000ms)
    mouse_click(0)
    sleep(1000ms)
    key(tab tab return)