## My function solves the inverse of a square matrix and stores it in the 
##cache memory. If the function has already done the inversion, It just reads
## the  cache value


makeCacheMatrix <- function(x = matrix()) {


##The function get ready to store the information in the cache memory
m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) m <<- solve
        getsolve <- function() m
        list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)

}


## This function solves the inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
m <- x$getsolve()

## Here checks if the m value is null (already been calcullated or not)
##Returns cache m or solves the inverse
        if(!is.null(m)) {
                message("getting cached data ;)")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setsolve(m)
        m

}
