## One of the functions creates a matrix object that can cache its inverse.
## The other function calculates inverse of the matrix retrieved from the first function.

## This function creates a special matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  put <- function(y){
    x <<- y
    i <<- NULL
  }
  get <- function()x
  putInv <- function(inverse) i <<- inverse
  getInv <- function() j 
  list(put = put, get = get, 
       putInv = putInv, 
       getInv = getInv)

}


## This matrix computes the inverse of the object obtained through the previous function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getInverse()
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }
  mat <- x$get()
  i <- solve(mat,...)
  x$setInverse(i)
  i
}
