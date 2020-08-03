build_gbm_model <- function(self){
    source("./scripts/models.R")
    source("./scripts/utils.R")
    load_dependencies()

    dt <- self$features

    x <- dt[, !"price"] 
    y <- dt[, price]

    parameters <- data.frame(
        n.trees = 100,
        shrinkage = 0.01,
        n.minobsinnode = 1,
        interaction.depth = 3 
    )

    source("./scripts/models.R")
    fit <- train_gbm_model(x, y, parameters)

    self$model <- fit    
}

summarize_model <- function(self){
    source("./scripts/utils.R")
    load_dependencies()
    print(self$model$results)
}
