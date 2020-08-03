build_gbm_model <- function(self){
    source("./scripts/models.R")
    source("./scripts/utils.R")
    load_dependencies()

    dt <- self$features

    x <- dt[, !"price"] 
    y <- dt[, price]

    self$model <- train_gbm_model(x, y, shrinkage=self$lr)
}

build_lasso_model <- function(self){
    source("./scripts/models.R")
    source("./scripts/utils.R")
    load_dependencies()

    dt <- self$features

    x <- dt[, c("bedrooms", "bathrooms", "sqft_living", "grade", "waterfront", "condition")] 
    y <- dt[, price]

    self$model <- train_lasso_model(x, y, lambda=self$reg)
}

select_model <- function(self, inputs){
    r2_gbm <- inputs$build_gbm_model$model$results$Rsquared
    r2_lasso <- inputs$build_lasso_model$model$results$Rsquared

    if (r2_gbm > r2_lasso){
        self$model <- inputs$build_gbm_model$model 
    } else {
        self$model <- inputs$build_lasso_model$model
    }
}

summarize_model <- function(self){
    print(self$model$results)
}
