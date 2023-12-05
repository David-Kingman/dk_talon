os: windows
and app.name: Microsoft Teams (work or school)
-

# generics
search: key(ctrl-e)
show commands: key(ctrl-/)
[start] new chat: key(ctrl-n)
open settings: key(ctrl-,)
open help: key(f1)
close: key(escape)

# navigations
open activity: key(ctrl-1)
open chat: key(ctrl-2)
open calendar: key(ctrl-3)
open teams: key(ctrl-4)

# messaging
[go] [to] compose [box]: key(c)
[expand] compose [box]: key(ctrl-shift-x)
send: key(ctrl-enter)
attach file: key(ctrl-o)
[start] new line: key(shift-enter)
reply [to] [thread]: key(r)

# Meetings, Calls and Calendar
accept video call: key(ctrl-shift-a)
accept audio call: key(ctrl-shift-s)
decline call: key(ctrl-shift-d)
start audio call: key(ctrl-shift-c)
start video call: key(ctrl-shift-u)
toggle mute: key(ctrl-shift-m)
toggle video: key(ctrl-shift-o)
toggle hand: key(ctrl-shift-k)
[go] [to] sharing toolbar: key(ctrl-shift-space)
decline screen share: key(ctrl-shift-d)
accept screen share: key(ctrl-shift-a)
schedule [a] meeting: key(alt-shift-n)
go to current time: key(alt-.)
show last week: key(ctrl-alt-left)
show next week: key(ctrl-alt-right)
view day: key(ctrl-alt-1)
view work week: key(ctrl-alt-2)
view week: key(ctrl-alt-3)
(safe | send) meeting request: key(ctrl-s)
join [from] meeting [details]: key(alt-shift-j)
go to suggested time: key(alt-shift-s)

share my screen: 
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

# Useful Text
hello: insert("Hi ")
