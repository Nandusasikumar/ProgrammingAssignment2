## Code base for the assignment 2 for the Coursera R Programming course.
## We are required to write 2 functions which shows the power of R to cache info so it can be looked up again and again
## Even though i am an engineer by profession, it is been a while since i have dealt with matrices
## Thought of adding this URL which would help to understand how/why we inverse a function
## http://www.johnmyleswhite.com/notebook/2009/12/16/quick-review-of-matrix-algebra-in-r/

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  ## Returns another function so environments are scoped properly.
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() inv
  ## creates a list with all getter and setter methods so we can use it elsewhere.
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

## Second function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), then cacheSolve 
## should retrieve the inverse from the cache.  

cacheSolve <- function(x, ...) {
  ## get the inverse of the input matrix and see if that object is NULL, If not null, then inverse it and return value.
  theinv <- x$getInverse()
  if (!is.null(theinv)) {
    message("Retreiving cached data")
    return(theinv)
  }
  ## No cache available so inverse it using solve and set the value in the cache. 
  ## There are other better methods for larger matrices,but solve would work for now..
  thematrix <- x$get()
  ## use solve to get the inverse 
  theinv <- solve(thematrix , ...)
  x$setInverse(theinv)
  theinv
} 
