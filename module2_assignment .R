# Evaluate the myMean function 
# Explain why this function does or does not work 
  > assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)
  > myMean <- function(assignment2) { return(sum(assignment)/length(someData)) }
  > myMean(assignment2)
  Error in myMean(assignment2) : object 'assignment' not found
# object 'assignment' is not properly defined 
    > myMean2<- function(assignment2) { return(sum(assignment2)/length(assignment2)) }
  > myMean2(assignment2)
  [1] 19.25