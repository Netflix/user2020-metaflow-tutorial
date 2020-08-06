build_gbm_model <- function(self){
    source("./scripts/models.R")
    source("./scripts/utils.R")
    load_dependencies()

    dt <- self$features

    x <- dt[, !"price"] 
    y <- dt[, price]

    self$model <- train_gbm_model(x, y)
}


summarize_model <- function(self){
    source("./scripts/utils.R")
    load_dependencies()
    print(self$model$results)
}
