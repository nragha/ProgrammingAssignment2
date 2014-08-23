## have created two functions
## makeCacheMatrix created matrix and stores in cache
## cacheSolve checks if inverse is in cache and if so returns 
## else creates new one

## this function has four methods to set the matrix, get the matrix
## set the inverse and get the inverse

makeCacheMatrix <- function(x = matrix()){
	inverse <- NULL
	set <- function(matrix){
		x <<- matrix
		inverse <<- NULL
	}
	get <- function() x
	setinverse <- function(inverse){
		inverse <<- inverse
	}
	getinverse <- function() inverse
	list(get=get,set=set,setinverse=setinverse,getinverse=getinverse)
}

## Return a matrix that is the inverse of 'x'
## first check if inverse is in cache else create a new one
}
cacheSolve <- function(x){
	inverse <- x$getinverse()
	if (!is.null(inverse)){
		message("getting cached data")
		return(inverse)
	}
	matrix <- x$get()
	inverse <- solve(mmat$getatrix)
	x$setinverse(inverse)
	inverse
}