## Put comments here that give an overall description of what your
## functions do


##creates a list containing function to set and get the values of the matrix and its inverse
makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) i <<- inverse
    getinverse <- function() i
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}

##checks if the inverse has been calculated or not. If calculated it draws the value from the cache else 
#calculates the inverse and sets the value in the cache 

cacheSolve <- function(x, ...) {
    i <- x$getinverse()
    if(!is.null(i)) {
        message("getting cached data.")
        return(i)
    }
    data <- x$get()
    i <- solve(data)
    x$setinverse(i)
    i
}
