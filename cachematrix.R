## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  matrixin <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function(solveMatrix) matrixin <<- solveMatrix
  getInverse <- function() matrixin
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  matrixin <- x$getInverse()
  if(!is.null(matrixin)){
    message("getting cached data")
    return(matrixin)
  }
  data <- x$get()
  matrixin <- solve(data)
  x$setInverse(matrixin)
  matrixin
}

