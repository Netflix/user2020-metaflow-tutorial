install_dependencies <- function(){
    if (!require(data.table)) {
        install.packages("data.table", repos = "https://cloud.r-project.org")
    }
    if (!require(caret)) {
        install.packages("caret", repos = "https://cloud.r-project.org")
    }
}
