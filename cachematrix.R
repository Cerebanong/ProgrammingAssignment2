## Homework Assignment #2 which calculates and
## caches the mean of a vector

## Creates a special vector

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function()
    x
  setmatrix <- function(solve)
    m <<- solve
  getmatrix <- function()
    m
  list(
    set = set, get = get,
    setmatrix = setmatrix,
    getmatrix = getmatrix
  )
}

## Calculates the mean of a special vector

cacheSolve <- function(x = matrix(), ...) {
  m <- x$getmatrix()
  if (!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  matrix <- x$get ()
  m <- solve(matrix, ...)
  x$setmatrix(m)
  m
}