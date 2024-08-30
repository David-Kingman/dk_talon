os: windows
mode: command
-

# Add file extension
dot {user.file_extensions}: insert("." + file_extensions)

# Get R help
help [{user.r_packages}] [{user.r_functions}] [<user.prose>]$:
    default_package = r_packages or ""
    default_function = r_functions or ""
    default_text = prose or ""
    search = "R {default_package} {default_function} {default_text}"
    sleep(500ms)
    user.search_with_search_engine("https://www.google.com/search?q=%s", search)