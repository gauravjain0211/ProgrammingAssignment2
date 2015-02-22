## follwing function will calculate the inverse of a matrix and will store the inverse in the cache.

## Following function will take a matrix as its input and will return the list of 4 functions.
## and store the cache of the inverse



makeCacheMatrix <- function(splmatrix=matrix()){
  inverse<-NULL
  getmatrix<-function() splmatrix
  setmatrix<-function(newmatrix){
    splmatrix<<-newmatrix
    inverse<<-NULL
  }
  getinverse<-function() inverse
  setinverse<-function(newinverse) inverse<<-newinverse
  list(getmatrix=getmatrix,setmatrix=setmatrix,getinverse=getinverse,setinverse=setinverse)
  # above code will return a list of 4 functions and once we run the following function this will
  # store the value of the inverse in the cache.
}


## Following function will take the list of the fuctions created by above function as its input
## and will return the inverse of the matrix. and will store the inverse of the matrix in cache.


cacheSolve <- function(mat){
  inv<-mat$getinverse()
  if(!is.null(inv)){
    message("Getting cached inverse")
    return(inv)
  }
  #if function will check whether the value of inverse is null or not,
  #value of inverse will be return from the cache if it is not null
  getmat<-mat$getmatrix()
  inv<-solve(getmat)
  mat$setinverse(inv)
  inv
  # above code will give the value of the inverse of the matrix
  # and further will store the same value in the cache when we are using mat$setinverse(inv)
}