load_dependencies <- function(){
    if (!suppressMessages(require(data.table))) {
        install.packages("data.table", repos = "https://cloud.r-project.org", quiet=TRUE)
    }
    if (!suppressMessages(require(caret))) {
        install.packages("caret", repos = "https://cloud.r-project.org", quiet=TRUE)
    }
    if (!suppressMessages(require(glmnet))) {
        install.packages("glmnet", repos = "https://cloud.r-project.org", quiet=TRUE)
    }
    if (!suppressMessages(require(gbm))) {
        install.packages("gbm", repos = "https://cloud.r-project.org", quiet=TRUE)
    }
}
