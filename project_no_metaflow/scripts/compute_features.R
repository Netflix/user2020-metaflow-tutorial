compute_features <- function(dt){
    dt$f1 <- dt$bedrooms * dt$bathrooms 
    dt$f2 <- dt$condition * dt$sqft_living

    # parametrized features
    dt$f3 <- dt$sqft_living / (dt$bedrooms+ 0.2 * dt$bathrooms) 

    dt$f4 <- dt$sqft_living / (dt$bedrooms+ 0.4 * dt$bathrooms) 

    dt$f5 <- dt$sqft_living / (dt$bedrooms+ 0.6 * dt$bathrooms) 

    write.csv(dt, "./data/features.csv", row.names=FALSE, quote=FALSE)
    return(dt)
}