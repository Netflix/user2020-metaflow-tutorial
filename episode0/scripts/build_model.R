build_model <- function(dt){
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

    summarize_model(fit)

    saveRDS(fit$model, file = "./saved_models/gbm_100_0.01.RData")

    return(fit)
}


summarize_model <- function(fit){
    print(fit$results)
}
