library(plumber)
setwd('C:\\Users\\ainhi\\OneDrive\\Escritorio\\BDATA1\\DATA SCIENCE\\EXAMENES\\Spotif')
r <- plumb("API.R")
r$run(port=8008)
