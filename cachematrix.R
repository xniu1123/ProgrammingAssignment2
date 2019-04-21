## Put comments here that give an overall description of what your
## functions do

##This pair of functions aims to cache the inverse of a matrix 

## Write a short comment describing this function
## The "makeCacheMatrix" function is to create a special "matrix" to cache its inverse
makeCacheMatrix <- function(x = matrix()) {      
  matrixin <- NULL                               
  set <- function(y){
    x <<- y
    matrixin <<- NULL
  }
  get <- function() x
  setInverse <- function(solveMatrix) matrixin <<- solveMatrix
  getInverse <- function() matrixin
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
## cacheSolve is a function which computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
##If the inverse has already been calculated and the matrix has not changed, then the cachesolve should retrieve the 
## inverse from the cache
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

