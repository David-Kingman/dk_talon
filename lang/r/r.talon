os: windows
language: en
code.language: r
-

# Package commands
add package {user.r_packages}:
    start = 'install.packages("' + r_packages
    end = start + '")'
    insert(end)
    
library {user.r_packages}:
    start = "library(" + r_packages
    end = start + ")"
    insert(end)

# General commands
{user.r_functions}: insert(r_functions + "(")

# R specific commands
are pipe:
    key(end)
    key(space)
    "|>"
    key(enter)

is in: " %in% "

state na: insert("NA")

foo: insert("foo")
