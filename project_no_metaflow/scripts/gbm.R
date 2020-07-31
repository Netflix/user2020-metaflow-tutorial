
train_gbm_model <- function(x, y, paramters){
    train_control <- caret::trainControl(
        method = "cv",
        number = 5)

    gbmfit <- caret::train(
        x = x,
        y = y,
        method = "gbm",
        tuneGrid = paramters,
        trControl = train_control,
        verbose = FALSE
    )

    return(list(model = gbmfit, results = gbmfit$results))
}