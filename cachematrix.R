## functions requested for programming assigment 2 - caching and retrieving inverse matrix.


## Function makeCachematrix stores a square matrix into a list witch include:
## a fucntion to get the matrix,
## a function to save the matrix, 
## a function to calculate the inverse matrix and save the result into the cache
## a function to retrive the inverse matrix from the cache

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
      x <<- y
      m <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## This function returns the inverse of matrix 'x', which has to be created using makeCacheMatrix function.
## It the inverse is stored in the cache, it returns the data from the cache, otherwise the computation is performed.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m  

}
