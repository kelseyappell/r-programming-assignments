## Assignment 2 ##
# assignment2 vector
assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)

# original myMean function
#myMean <- function(assignment2) {
  #return(sum(assignment) / length(someData))
#}

# Run original myMean
#myMean(assignment2)

# Corrected Function 
correctMean <- function(vector) {
  return(sum(vector) / length(vector))
}

# Run Correct Function
correctMean(assignment2)
