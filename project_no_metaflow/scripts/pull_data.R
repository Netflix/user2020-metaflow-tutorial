pull_house_data <- function(){
  suppressPackageStartupMessages(library(data.table))
  dt <- fread("./data/raw-house-data.csv") 

  dt$zipcode <- as.character(dt$zipcode)

  # convert date string to categorical year, month, weekday 
  dates <- as.Date(dt$date, format="%Y%m%dT000000")
  dt$year <- as.factor(year(dates))
  dt$month <- as.factor(months(dates))
  dt$weekday <- as.factor(weekdays(dates))

  # remove id and date columns
  dt[,  date:=NULL]
  dt[,  id:=NULL]
  dt[,  zipcode:=NULL]

  write.csv(dt, "./data/house_price.csv", row.names=FALSE, quote=FALSE)
  return(dt)
}
