## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##set the value of the matrix
##get the value of the matrix
##set the value of the inverse
##get the value of the inverse
makeCacheMatrix <- function(x = matrix()) {
        inverse2 <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
                }
        get <- function() x
        setinverse <- function(inverse2) inverse2 <<- inverse
        getinverse <- function() inverse2
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)

}


## Write a short comment describing this function
##The following function calculates the inverse of the special "matrix" created with the above function. However, it first checks to see if the inverse has already been calculated. If so, it gets the inverse from the cache and skips the computation. Otherwise, it calculates the inverse of the data and sets the value of the inverse in the cache via the setinverse function
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinverse()
        if(!is.null(inverse2)) {
                message("getting cached data")
                return(inverse2)
        }
        data <- x$get()
        inverse2 <- solve(data, ...)
        x$setinverse(inverse2)
        inverse2
}
