## script to make the dataset
message("starting save-data.R")
library(dlnm)

data("chicagoNMMAPS")

readr::write_csv(chicagoNMMAPS, file="data/chicagoNMMAPS.csv")
