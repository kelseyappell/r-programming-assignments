              ## Assignment 6 ##
# Matrix Addition & Subtraction
A <- matrix(c(2, 0, 1, 3), ncol = 2)
B <- matrix(c(5, 2, 4, -1), ncol = 2)

A + B
A - B

# Create Diagonal Matrix
D <- diag(c(4, 1, 2, 3))
D

# Construct a Custom 5 x 5 Matrix
m <- matrix(0, nrow = 5, ncol = 5)
diag(m) <- 3
m[1, 2:5] <- 1
m[2:5, 1] <- 2
m


  
