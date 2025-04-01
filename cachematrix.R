## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL   #initial cache for the inverse
        
        #function to set the matrix
        set <- function(y) {
                x <<- y     #store the new matrix
                inv <- NULL  #reset cached inverse (since the matrix changed)
                }
        
        get <- function() x   #function to get the matrix
        setInverse <- function(inverse) inv <<- inverse #function to set the inverse (cache the results)
        getInverse <- function() inv  #function to get the cached inverse
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse() #check if inverse is already cached
        if(!is.null(inv)){
                message("Getting cached inverse")
                return(inv)
}
       mat <- x$get()   #get the matrix
       inv <- solve(mat, ...) #compute the inverse using solve()
           x$setInverse(inv) # store the computed inverse in cache
           inv #return the inverse
           }
