makeCacheMatrix <- function(x = matrix()) {  # Define x as a matrix class
  x_inv <- NULL  #x_inv is the inverse of matrix x
  set <- function(y) {
    x <<- y # This takes the value y and assigns it to x in the parent env.
    x_inv <<- NULL # Puts NULL in the value x_inv in the parent env.
  }
  get <- function() x
    setinverse <- function(whatever) x_inv <<- whatever
    getinverse <- function() x_inv
      x_inv <- solve(x)
}

cacheSolve <- function(x) {
  x_inv <- x # Take the value of x from the parent environment
    if(!is.null(x_inv)) {
    message("getting cached inverse")
    return(x_inv)
  }
  x_inv
}