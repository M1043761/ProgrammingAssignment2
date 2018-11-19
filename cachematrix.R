## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
       cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
        if (!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        mat <- x$get()
        inv <- solve(mat, ...)
        x$setInverse(inv)
        inv
 }


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) inv <<- inverse
        getInverse <- function() inv
        list(set = set,
             get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}
f <- file("stdin")
on.exit(close(f))

T <- readLines(f)
T <- strsplit(T, " ")
Ti <- as.numeric(T[[2]])
M <- as.numeric(T[[1]])
L=length(Ti)-M+1
if(L<=0)
{M <-"NIL"
    write(M, stdout())
} else write(Ti[L], stdout())
setTimeLimit(cpu = Inf, elapsed = Inf, transient = FALSE)
getwd()
setSessionTimeLimit(cpu = Inf, elapsed = Inf)

        ## Return a matrix that is the inverse of 'x'
}
