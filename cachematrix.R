## Put comments here that give an overall description of what your
## functions do

## Creates matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Returns a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
        
  inv <- x$getinverse()
  ##Check for inverse cache
  if(!is.null(inv)) {
    message("Getting Cached Data")
    return(inv)
  }
  #If no cahced inverse then create it
  matrixdata <- x$get()
  matrixinverse <- solve(matrixdata)
  x$setinverse(matrixinverse)
  inv
}
