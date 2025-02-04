os: windows
and app.name: Microsoft Teams (work or school)
os: windows
and app.name: Microsoft Teams
os: windows
and app.exe: ms-teams.exe
- 

# Generic Commands
search: key(ctrl-e)
show commands: key(ctrl-/)
open settings: key(ctrl-,)
open help: key(f1)
close: key(escape)

# Navigation Commands
open chat: key(ctrl-2)
open calendar: key(ctrl-3)

# Searching
find <user.text>$:
    key(ctrl-e)
    sleep(500ms)
    edit.delete_line()
    insert(text)
    key(enter)

# Messaging
new chat: key(ctrl-n)

go chat {user.address_book}:
    key(ctrl-n)
    sleep(1s)
    insert(address_book)        
    sleep(1s)
    key(enter)
    key(enter)

new line: key(shift-enter)
attach file: key(ctrl-o)
code block: key(ctrl-alt-shift-b)

# Useful editing commands
dent: 
    insert(".")
    key(enter)

steel: 
    insert("?")
    key(enter)

pool:
    insert(": ")
    key(ctrl-v)
    key(enter)

# Useful text
thanks: 
    insert("Thank you")
    key(enter)

okay: 
    insert("Okay")
    key(enter)

# Accepting Calls
accept video call: key(ctrl-shift-a)
accept audio call: key(ctrl-shift-s)
decline call: key(ctrl-shift-d)
start audio call: key(ctrl-shift-c)
start video call: key(ctrl-shift-u)

# Meeting Actions
join meeting: key(ctrl-shift-j) 
toggle mute: key(ctrl-shift-m)
toggle video: key(ctrl-shift-o)
toggle hand: key(ctrl-shift-k)
open chat: key(ctrl-shift-r)
end meeting: key(ctrl-shift-h)

# Chose email address
{user.address_book} email:
    insert(address_book)
    sleep(1s)
    key(enter)

# Screen Sharing
share my screen: 
    key(ctrl-shift-e)
    sleep(5s)
    key(tab)
    sleep(5s)
    key(tab)
    sleep(5s)
    key(tab)
    sleep(5s)
    key(enter)

stop sharing my screen: key(ctrl-shift-e)

# Calendar
new meeting: key(alt-shift-n)
send meeting request: key(ctrl-s)
show last day: key(ctrl-alt-left)
show next day: key(ctrl-alt-right)
