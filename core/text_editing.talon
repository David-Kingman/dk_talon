os: windows
language: en 
mode: command
-

# Abbreviations
crate: insert(': ')
cod: insert("ctrl")

# Line spacing commands
new graph: key(enter enter)
new space: key(enter enter enter up)
new void: key(enter enter up)

# Go left
lefty: edit.left()

# Go right
righty: edit.right()

# Go up
upper: edit.up()

# Go down
downer: edit.down()

# Go word left 
lifter: edit.word_left()

# Go word right
writer: edit.word_right()

# Select word left
tinker: edit.extend_word_left()

# Select word right
ranger: edit.extend_word_right()

# Clear word left
cleaver:
    edit.extend_word_left()
    edit.delete()

# Clear word right
baker:
    edit.extend_word_right()
    edit.delete()

# new sentence
sent <user.prose>$: 
    user.add_phrase_to_history(prose)
    user.insert_formatted(prose, "CAPITALIZE_FIRST_WORD")

# dot space sentence
dollar <user.prose>$: 
    user.add_phrase_to_history(prose)
    insert(". ")
    user.insert_formatted(prose, "CAPITALIZE_FIRST_WORD")

# comma space say
congo <user.prose>$:
    user.add_phrase_to_history(prose)
    insert(", ")
    insert(prose)

# space say
spanner <user.prose>$:
    user.add_phrase_to_history(prose)
    insert(" ")
    insert(prose)

# dash space say
dongle <user.prose>$:
    user.add_phrase_to_history(prose)
    insert(" - ")
    insert(prose)
