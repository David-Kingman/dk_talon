os: windows
language: en
app: Remote Desktop
app: rstudio
app: vscode
-

# Package commands
add package {user.r_packages}:
    start = 'install.packages("' + r_packages
    end = start + '")'
    insert(end)

add VSCode packages: 
    insert('renv::install(c("languageserver", "jsonlite", "httpgd"))')
    key(enter)

library {user.r_packages}:
    start = "library(" + r_packages
    end = start + ")"
    insert(end)

pack {user.r_packages}:
    string = r_packages + "::"
    insert(string)

install {user.r_packages}:
    start = 'renv::install("' + r_packages
    end = start + '")'
    insert(end)

# List commands
funk {user.r_functions}: insert(r_functions + "(")

funk anonymous: "\(x) "
 
pam {user.r_function_arguments}: insert(r_function_arguments + " = ")

{user.r_symbols}: 
    start = " " + r_symbols
    end = start + " "
    insert(end)

sign {user.r_symbols}: insert(r_symbols) 

# Special R symbols/code blocks
chain:
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
