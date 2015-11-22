## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

    ##begins by setting the inverse to NULL
	 m <- NULL 

        ## Define the function to set the matrix, x, to the new matrix, y, and resets the inverse, m, to NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }

        ## Returns the matrix, x
        get <- function() x


        ## Set the Inverse, m, to inv
        setinv <- function(inv) m <<- inv

        ## Return the inverse, m
        getinv <- function() m
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)

}


## Write a short comment describing this function this function looks for the inverse, if the inverse exists, then just call the matrix, if don't
## then calculate it by using the function "solve"

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinv()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinv(m)
        m
}
