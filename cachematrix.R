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
  
}


## Following function will take the list of the fuctions created by above function as its input
## and will return the inverse of the matrix. and will store the inverse of the matrix in cache.


cacheSolve <- function(mat){
  inv<-mat$getinverse()
  if(!is.null(inv)){
    message("Getting cached inverse")
    return(inv)
  }
 
  getmat<-mat$getmatrix()
  inv<-solve(getmat)
  mat$setinverse(inv)
  inv

}