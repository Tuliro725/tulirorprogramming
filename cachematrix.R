
# This created function creates a list containing a function that is able to do the following steps:
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the value of inverse of the matrix
# 4. get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {var1 <- NULL
set <- function(y) {
  x <<- y
  var1 <<- NULL
}
get <- function() x
setinverse <- function(inverse) var1 <<- inverse
getinverse <- function() var1
list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)

}



# The following function returns the inverse of the matrix. It first checks if
# the inverse has already been computed. If that is the case, it then gets the result and skips the
# computation. If it has not been computed, it then computes the inverse, sets the value in the cache via
# setinverse function.

cacheSolve <- function(x, ...) {
  
  var1 <- x$getinverse()
  if(!is.null(var1)) {
    message("getting cached data.")
    return(inv)
  }
  data <- x$get()
  var1 <- solve(data)
  x$setinverse(var1)
  var1
       
}


