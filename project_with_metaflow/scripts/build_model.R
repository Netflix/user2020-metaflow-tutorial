build_model <- function(self){
    # load metaflow artifact from previous step
    dt <- self$features

    x <- dt[, !"price", with = FALSE] 
    y <- dt[, price]

    parameters <- data.frame(
        n.trees = 100,
        shrinkage = 0.01,
        n.minobsinnode = 1,
        interaction.depth = 3
    )

    source("./scripts/gbm.R")
    fit <- train_gbm_model(x, y, parameters)

    ### saveRDS(fit$model, file = "./saved_models/gbm_100_0.01.RData")
    ### return(fit)

    self$model <- fit
}


summarize_model <- function(self){
    print(self$model$results)
}
