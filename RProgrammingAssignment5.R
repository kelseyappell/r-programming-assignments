          ## Assignment 5 ##
# Create Matricies
A <- matrix(1:100, nrow = 10)
B <- matrix(1:1000, nrow = 10)

# Inspect Dimensions
dim(A) # Square
dim(B) # Not square

# Compute Inverse Determinant
# For A
invA <- tryCatch(solve(A), error = function(e) e)
detA <- det(A)

# For B, use tryCatch to capture errors
invB <- tryCatch(solve(B), error = function(e) e)
detB <- tryCatch(det(B),   error = function(e) e)

# Error Messages
invA$message
invB$message
detB$message


