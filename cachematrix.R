## Code base for the assignment 2 for the Coursera R Programming course.
## We are required to write 2 functions which shows the power of R to cache info so it can be looked up again and again
## Even though i am an engineer by profession, it is been a while since i have dealt with matrix
## Thought of adding this URL which would help to understand how/why we inverse a function
## https://www.khanacademy.org/math/linear-algebra/matrix_transformations/inverse_of_matrices/v/linear-algebra-example-of-finding-matrix-inverse

## First function creates a special "matrix" object that can cache its inverse.  

makeCacheMatrix <- function(x = matrix()) {
 x + 1
}  


## Second function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), then cacheSolve 
## should retrieve the inverse from the cache.  

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  x +2
}  
