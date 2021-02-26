#This module is focused on the broad OOPs used in R (S3 vs. S4)
#To test the type of object, the otype() function is needed
#Install and load pryr, it allows for the use of optype()
install.packages("pryr")
library(pryr)

#Choose data set; selected "quakes" that's built into R 
#Quakes contains data of locations of earthquakes off Fiji
print(quakes)

#Test if generic function will work on the dataset of interest
summary(quakes)

#S3 class for dataset quakes
quakes = function(la, lo, d, m, s) {
  quakes = list(lat = la, long = lo, depth = d, mag = m, stations = s)
  class(quakes) <- "quakes_s3"
  quakes
}

# Define print function for quakes_s3
print.quakes_s3 <- function(quakes) {
  cat("lat: ", quakes$lat, "\n")
  cat("long: ", tree$long, "\n")
  cat("depth: ", tree$depth, "\n")
  cat("mag: ", tree$mag, "\n")
  cat("stations: ", tree$stations, "\n")

#Create quakes_s3 objects for each row in dataset quakes
  cat("Dataset quakes as S3 objects:\n")
  apply(quakes, 1, function(x) quakes_s3(x[1],x[2],x[3], x[4], x[5]))

  
# S4 class created for dataset quakes
  setClass("tquakes_s4",
           representation(
             lat="numeric",
             long="numeric",
             depth="numeric", 
             mag="numeric",
             stations="numeric")
)

  