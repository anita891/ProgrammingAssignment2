## this code computes the inverse matrix of a matrix


## this function takes a matrix as input ,here x is a input
## functions contains a list of all the functions.
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Returns a matrix that is the inverse of 'x'
  m <- x$getsolve()
  ##checks whether it is cached or not
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  ##finding the inverse matrix
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(m)
  m
}
