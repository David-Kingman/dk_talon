os: windows
app: Microsoft outlook
-

# Navigation
go inbox: key(ctrl-1)
go calendar: key(ctrl-2)

# Sending and receiving
new message: key(ctrl-n)
send message: key(ctrl-enter)
delete message: key(delete)
discard that: key(escape)
reply: key(ctrl-r)
reply all: key(ctrl-shift-r)
forward: key(ctrl-f)
flag message: key(insert)
insert link: key(ctrl-k)
bold that: key(ctrl-b)
underline that: key(ctrl-u)
italicize that: key(ctrl-i)

# Quick steps
move receipts: key(ctrl-shift-9)
move civil service: key(ctrl-shift-8)
move health: key(ctrl-shift-7)
move finances: key(ctrl-shift-6)
move jobs: key(ctrl-shift-5)
move equalities: key(ctrl-shift-5)
move admin: key(ctrl-shift-6)
move data: key(ctrl-shift-7)

# Useful Text
hello: insert("Hi ")

goodbye:
    insert("Thanks and best wishes,")
    key(enter)
    insert("David")
    