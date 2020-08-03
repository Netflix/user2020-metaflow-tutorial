load_dependencies <- function(){
    if (!suppressWarnings(require(data.table))) {
        install.packages("data.table", repos = "https://cloud.r-project.org", quiet=TRUE)
    }
    if (!suppressWarnings(require(caret))) {
        install.packages("caret", repos = "https://cloud.r-project.org", quiet=TRUE)
    }
    if (!suppressWarnings(require(glmnet))) {
        install.packages("glmnet", repos = "https://cloud.r-project.org", quiet=TRUE)
    }
    if (!suppressWarnings(require(gbm))) {
        install.packages("gbm", repos = "https://cloud.r-project.org", quiet=TRUE)
    }
}
