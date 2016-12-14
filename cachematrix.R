## make a matrix and cache it and the second function calculates the inverse matrix.

## make a matrix and then this function gives four functions 

makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL
    set <- function(y) {
        x <<- y
        inverse <<- NULL
    }
    get <- function() x
    setinverse <- function(inv) inverse <<- inv
    getinverse <- function() inverse
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}



##  if the inverse is "NULL", then it calculates the inverse. if the inverse is
## already calculated the function returns the cached inverse and the message 
##"getting cached data"

cacheSolve <- function(x, ...) {
    inverse <- x$getinverse()
    if(!is.null(inverse)) {
        message("getting cached data")
        return(inverse)
    }
    matrix <- x$get()
    inverse <- solve(matrix)
    x$setinverse(inverse)
    inverse
}
        ## Return a matrix that is the inverse of 'x'
