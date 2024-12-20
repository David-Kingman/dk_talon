os: windows
mode: command
-

# Add file extension
dot {user.file_extensions}: insert("." + file_extensions)

# Refer to an object or variable
object {user.programming_objects}: insert(programming_objects)

# Get R help
help [{user.r_packages}] [{user.r_functions}] [<user.prose>]$:
    default_package = r_packages or ""
    default_function = r_functions or ""
    default_text = prose or ""
    search = "R {default_package} {default_function} {default_text}"
    sleep(500ms)
    user.search_with_search_engine("https://www.google.com/search?q=%s", search)

paste help: 
    text = clip.text()
    search = "R {text}"
    sleep(500ms)
    user.search_with_search_engine("https://www.google.com/search?q=%s", search)

pack {user.r_packages}: insert(r_packages)
function {user.r_functions}: insert(r_functions)

get clipper: 
    insert("clip_object_names <- function(x){{ writeClipboard(names(x)) }}")
    sleep(500ms)
    key(enter)

# Get VSCode help
code [<user.prose>]$:
    search = "VSCode {prose}"
    sleep(500ms)
    user.search_with_search_engine("https://www.google.com/search?q=%s", search)