## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()){
    myMatrix <- NULL
    
    set <- function(y) {
        x <<- y
        myMatrix <<- NULL
    }
    get <- function() x
    setSolved <- function(solvedMatrix) myMatrix <<- solvedMatrix
    getSolved <- function() myMatrix
    list(set = set, get = get,
         setSolved = setSolved,
         getSolved = getSolved)
}



## Write a short comment describing this function

cacheSolve <- function(x) {
    myMatrix <- x$getSolved()
    if(!is.null(myMatrix)) {
        message("getting cached data")
        return(myMatrix)
    }
    message("getting non data")
    data <- x$get()
    invertMatrix <- solve(data)
    myMatrix <- x$setSolved(invertMatrix)
    myMatrix
}
