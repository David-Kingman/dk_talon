os: windows
language: en 
mode: command
-

crate:
 insert(':')
 insert(' ')

cod: insert("ctrl")

# Go line start
stinger: edit.line_start()

# Go line end
lender: edit.line_end()

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
