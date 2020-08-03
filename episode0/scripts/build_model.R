build_model <- function(dt){
    x <- dt[, !"price"] 
    y <- dt[, price]


    source("./scripts/models.R")
    fit <- train_gbm_model(x, y)

    summarize_model(fit)

    saveRDS(fit$model, file = "./saved_models/gbm_100_0.01.RData")

    return(fit)
}

summarize_model <- function(fit){
    print(fit$results)
}
