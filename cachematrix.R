## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL
    set <- function(y) {
        x <<- y
        inverse <<- NULL
    }
    get <- function() x
    getInverse <- function() inverse
    setInverse <- function(inverse) inverse <<- inverse
    list(set = set, get = get,
         getInverse = getInverse,
         setInverse = setInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

    i <- x$getInverse()
    if (is.null(i)) {
        i <- solve(x$get(), ...)
        x$setInverse(i)
    }
    i
}
