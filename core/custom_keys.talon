os: windows
language: en 
mode: command
-

# Letters [A-Z]
{user.letter}:              key(letter)

crate:
 insert(':')
 insert(' ')

cod: insert("ctrl")

trash: key(backspace) 

bend: edit.line_start()
lend: edit.line_end()
