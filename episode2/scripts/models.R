
train_gbm_model <- function(x, y, parameters){
    train_control <- caret::trainControl(
        method = "cv",
        number = 5)

    gbmfit <- caret::train(
        x = x,
        y = y,
        method = "gbm",
        tuneGrid = parameters,
        trControl = train_control,
        verbose = FALSE
    )

    return(list(model = gbmfit, results = gbmfit$results))
}

train_lasso_model <- function(x, y, parameters){
    train_control <- caret::trainControl(
        method = "cv",
        number = 5)    

    lassofit <- caret::train(
        x = x,
        y = y,
        method = "glmnet",
        tuneGrid = parameters,
        trControl = train_control,
        verbose = FALSE
    )
}