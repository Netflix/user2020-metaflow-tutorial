build_gbm_model <- function(self){
    source("./scripts/models.R")
    source("./scripts/utils.R")
    load_dependencies()

    dt <- self$features

    x <- dt[, !"price"] 
    y <- dt[, price]

    self$model <- train_gbm_model(x, y, shrinkage=self$input)
}

select_model <- function(self, inputs){
    best_model <- NULL
    best_r2 <- 0
    for (inp in inputs){
        if (inp$model$results$Rsquared > best_r2){
            best_model <- inp$model 
        }
    }
    self$model <- best_model
}

summarize_model <- function(self){
    print(self$model$results)
}
