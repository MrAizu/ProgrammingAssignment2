## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## By default x is a vector object of a matrix class
## makeCacheMatrix is just a list of user defined-function
## Assign m object as a inverse function 
makeCacheMatrix <- function(x = matrix()) {
            m       <- NULL
            setxobj <- function(a){
              x <<- a
              m <<- NULL
            }
        setinvobjx <- function(invtmp) m <<- invtmp
        getinvobjx <- function() m
        getobjx     <- function() x 
##list all the function in a vector
list(set = setxobj, get = getobjx, setinv = setinvobjx , getinv = getinvobjx)
        
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinv()
        if (!is.null(m)) {
          message("getting cached data")
          return(m)
        }
        mat_tmp <- x$get()
        mat_inv <- solve(mat_tmp, ...)
        x$setinv(mat_inv)
        m 
        
}
