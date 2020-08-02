build_gbm_model <- function(self){
    library(data.table)
    library(caret)

    dt <- self$features

    x <- dt[, !"price", with = FALSE] 
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
    print(self$model$results)
}
