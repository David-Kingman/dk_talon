os: windows
language: en
app: Remote Desktop
app: rstudio
app: vscode
-

# Package commands
add package {user.r_packages}:
    insert('install.packages("{r_packages}")')
    key(enter)

remove package {user.r_packages}:
    insert('remove.packages("{r_packages}")')
    key(enter)

add VSCode packages: 
    insert('renv::install(c("languageserver", "jsonlite", "httpgd"))')
    key(enter)

install lamda: insert("devtools::install_git('https://DELmodel@dev.azure.com/DELmodel/LMDAR/_git/LMDAR', git = 'external', build_vignettes = TRUE")

library {user.r_packages}: insert('library({r_packages})')

install {user.r_packages}:
    insert('renv::install("{r_packages}")')
    key(enter)

get version {user.r_packages}: 
    insert('packageVersion("{r_packages}")')
    key(enter)

# List commands
funk {user.r_functions}: insert(r_functions + "(")

pam {user.r_function_arguments}: insert(r_function_arguments + " = ")

{user.r_symbols}: 
    start = " " + r_symbols
    end = start + " "
    insert(end)

sign {user.r_symbols}: insert(r_symbols) 

# Special R symbols/code blocks
chain:
    key(end)
    sleep(100ms)
    insert(" |>")
    sleep(100ms)
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

print everything: insert("print(n = Inf)")
 
function ex:
    insert("function(x) {}")
    sleep(100ms)
    key(left enter)
    sleep(100ms)
    insert("x |>")
    sleep(100ms)
    key(enter)

function why:
    insert("function(x, y) {}")
    sleep(100ms)
    key(left enter)
    sleep(100ms)
    insert("x |>")
    sleep(100ms)
    key(enter)

anonymous ex: "\(x) "
anonymous why: "\(x, y) "

dot data: insert(".data[[")
as survey design: insert("as_survey_design(weights = ")
no confidence: insert("vartype = NULL")
confidence interval: insert("vartype = 'ci'")

# Equalities Explorer functions
stop dashboard: insert("call_docker('stop ee_app')")
get functions: insert("source('R/server_functions.R')")
rebuild image: insert("reload_dashboard(clear_cache = True)")
update user guide: insert("quarto::quarto_render('R/equalities_explorer_user_guide_page.qmd')")
get names: insert("clip_object_names(")