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
lima: edit.word_left()

# Go word right
romeo: edit.word_right()

# Select word left
tinker: edit.extend_word_left()

# Select word right
ranger: edit.extend_word_right()

# Clear line
torch: edit.delete_line()

# Clear word left
zip:
    edit.extend_word_left()
    edit.delete()

# Clear word right
baker:
    edit.extend_word_right()
    edit.delete()

# Clear way left
clean left:
    edit.extend_line_start()
    edit.delete()

# Clear way right
clean right:
    edit.extend_line_end()
    edit.delete()

# Clear way up
clean up:
    edit.extend_file_start()
    edit.delete()

# Clear way down
clean down:
    edit.extend_file_end()
    edit.delete()
    
# Title format and wrap text in double quotes
strung <user.prose>$: 
    insert('"')
    user.add_phrase_to_history(prose)
    user.insert_formatted(prose, "CAPITALIZE_ALL_WORDS")
    insert('"') 

# Wrap sentence in single quotes
strangle <user.prose>$: 
    insert("'")
    user.add_phrase_to_history(prose)
    user.insert_formatted(prose, "CAPITALIZE_FIRST_WORD")
    insert("'")

# Title format and separate with dots
dame <user.prose>$: 
    user.add_phrase_to_history(prose)
    title_text = user.formatted_text(prose, "CAPITALIZE_ALL_WORDS")
    user.insert_formatted(title_text, "DOT_SEPARATED")

# Email format
mail <user.prose>$: 
    user.add_phrase_to_history(prose)
    title_text = user.formatted_text(prose, "CAPITALIZE_ALL_WORDS")
    user.insert_formatted(title_text, "DOT_SEPARATED")    
    insert("@")
    
# Select text
grab <user.prose_range>$: user.perform_ocr_action("select", "", prose_range)

# Go before text
bravo <user.timestamped_prose>$: user.move_text_cursor_to_word(timestamped_prose, "before")

# Go after text
alpha <user.timestamped_prose>$: user.move_text_cursor_to_word(timestamped_prose, "after")

# Undo
nope: edit.undo()

# Cut
cut: edit.cut()

# Copy
copy: edit.copy()

# Paste
paste: edit.paste()

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

# question mark space new sentence
quest <user.prose>$: 
    user.add_phrase_to_history(prose)
    insert("? ")
    user.insert_formatted(prose, "CAPITALIZE_FIRST_WORD")

# comments
bail <user.prose>$: 
    user.add_phrase_to_history(prose)
    insert("# ")
    user.insert_formatted(prose, "CAPITALIZE_FIRST_WORD")

# bullets
bullet <user.prose>$: 
    user.add_phrase_to_history(prose)
    insert("- ")
    user.insert_formatted(prose, "CAPITALIZE_FIRST_WORD")

# square brackets
squint <user.prose>$: 
    user.add_phrase_to_history(prose)
    insert("[")
    user.insert_formatted(prose, "CAPITALIZE_FIRST_WORD")
    insert("]")
