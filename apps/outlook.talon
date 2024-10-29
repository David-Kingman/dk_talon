os: windows
mode: command
app: Microsoft Outlook
-

# Navigation
go inbox: key(ctrl-1)
go calendar: key(ctrl-2)
jump message: key(tab tab tab tab)

# Searching
find <user.text>$:
    key(alt-q)
    sleep(500ms)
    edit.delete_line()
    insert(text)
    key(enter)

clear: 
    mouse_move(39, 205)
    sleep(1500ms)
    mouse_click(0)

# Sending and receiving
new message: key(ctrl-n)
send message: key(ctrl-enter)
chuck: key(delete)
reply: key(ctrl-r)
reply everyone: key(ctrl-shift-r)
forward: key(ctrl-f)
flag: key(insert)

# Clear word left
zip: key(ctrl-backspace)

# Clear word right
baker: key(ctrl-delete)

# Formatting commands
insert link: key(ctrl-k)
bold that: key(ctrl-b)
underline that: key(ctrl-u)
italicize that: key(ctrl-i)

# Work quick steps
file: key(ctrl-shift-5)
file admin: key(ctrl-shift-6)
file data: key(ctrl-shift-7)

# Personal quick steps
file receipts: key(ctrl-shift-9)
file civil service: key(ctrl-shift-8)
file health: key(ctrl-shift-7)
file money: key(ctrl-shift-6)
# move jobs: key(ctrl-shift-5)

# Chose email address
{user.address_book} email:
    insert(address_book)
    sleep(500ms)
    key(enter) 

# Tag someone
shout {user.names}:
    insert("@")
    insert(names)
    sleep(500ms)
    key(enter)

# Useful Text
subject <user.prose>$: 
    key(tab tab tab)
    sleep(100ms)
    user.add_phrase_to_history(prose)
    user.insert_formatted(prose, "CAPITALIZE_ALL_WORDS")
    key(tab)

high <user.prose>$: 
    user.add_phrase_to_history(prose)
    insert("Hi ")
    user.insert_formatted(prose, "CAPITALIZE_ALL_WORDS")
    insert(",")
    key(enter enter)

low <user.prose>$: 
    key(tab tab tab tab)
    user.add_phrase_to_history(prose)
    insert("Hi ")
    user.insert_formatted(prose, "CAPITALIZE_ALL_WORDS")
    insert(",")
    key(enter enter)

hello:
    insert("Hi,")
    key(enter enter)

goodbye:
    key(enter enter)
    insert("Thanks and best wishes,")
    key(enter)
    insert("David")