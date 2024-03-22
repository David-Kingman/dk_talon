os: windows
and app.name: Microsoft Teams (work or school)
-

# Generic Commands
search: key(ctrl-e)
show commands: key(ctrl-/)
open settings: key(ctrl-,)
open help: key(f1)
close: key(escape)

# Navigation Commands
open activity: key(ctrl-1)
open chat: key(ctrl-2)
open calendar: key(ctrl-3)
open teams: key(ctrl-4)

# Messaging
new chat: key(ctrl-n)
send: key(ctrl-enter)
new line: key(shift-enter)
attach file: key(ctrl-o)

# Accepting Calls
accept video call: key(ctrl-shift-a)
accept audio call: key(ctrl-shift-s)
decline call: key(ctrl-shift-d)
start audio call: key(ctrl-shift-c)
start video call: key(ctrl-shift-u)

# Meeting Actions
join meeting: key(ctrl-shift-j) # From "meeting started" toast
toggle mute: key(ctrl-shift-m)
toggle video: key(ctrl-shift-o)
toggle hand: key(ctrl-shift-k)
open chat: key(ctrl-shift-r)
end meeting: key(ctrl-shift-h)

# Screen Sharing
key(ctrl-shift-x): 
    key(ctrl-shift-e)
    sleep(1000ms)
    key(tab)
    sleep(1000ms)
    key(tab)
    sleep(1000ms)
    key(tab)
    sleep(1000ms)
    key(return)

stop sharing my screen: key(ctrl-shift-e)

# Calendar
new meeting: key(alt-shift-n)
send meeting request: key(ctrl-s)
show last day: key(ctrl-alt-left)
show next day: key(ctrl-alt-right)
