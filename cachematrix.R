## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## set the value of the vector
## get the value of the vector
## set the value of the inverse
## get the value ot the inverse

makeCacheMatrix <- function(x = matrix()){
        e <- NULL
        set <- function(y){
              x <<- y
              e <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) e <<- inverse
        getinverse <- function() e
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}



cacheSolve <- function(x, ...){
        e <- x$getinverse()
        if (!is.null(e)){
          message("getting cached data")
          return(e)
        }
        data <- x$get()
        e <- solve(data, ...)
        x$setinverse(e)
        e
}
