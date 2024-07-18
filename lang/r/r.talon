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

pack {user.r_packages}:
    string = r_packages + "::"
    insert(string)

# List commands
funk {user.r_functions}: insert(r_functions + "(")

pam {user.r_function_arguments}: insert(r_function_arguments + " = ")

{user.r_symbols}: 
    start = " " + r_symbols
    end = start + " "
    insert(end)

sign {user.r_symbols}: insert(r_symbols) 
    
help {user.r_functions}: insert("?" + r_functions)

help {user.r_packages}: insert("?" + r_packages)

# Special R symbols/code blocks
rare pipe:
    key(end)
    key(space)
    "|>"
    key(enter)

mag pipe:
    key(end)
    key(space)
    "%>%"
    key(enter)

plot pipe:
    key(end)
    key(space)
    "+"
    key(enter)

next: 
    insert(",")
    key(enter)

after: insert(", ")

clear everything: insert("rm(list = ls())")

print all: insert("|> print(n = Inf)")
 
new function:
    insert("function() {}")
    key(left left left left)

# Git bash
{user.git_functions}: 
    insert(git_functions + " ")