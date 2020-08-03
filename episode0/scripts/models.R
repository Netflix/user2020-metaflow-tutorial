
train_gbm_model <- function(x, y, shrinkage=0.01, n.trees = 100, depth = 3){
    parameters <- data.frame(
        n.trees = n.trees,
        shrinkage = shrinkage,
        n.minobsinnode = 1,
        interaction.depth = depth 
    )

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