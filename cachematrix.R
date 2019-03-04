
makeCacheMatrix <- function(x = matrix()) {
  inver<- NULL
set <- function(y)
{
  x <<- y
  inver<<- NULL
}
get <- function() x
setInverse <- function(solveMatrix) 
inver <<- solveMatrix
getInverse <- function() inver
list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)

##solves the matrix so as to help take the values to find the inverse
}




cacheSolve <- function(x, ...) {
  inver <- x$getInverse()
  ##if the determinant of the matrix is zero,it shows U=0
  if(!is.null(inver))
  {
    
    return(inver)
  }
  data <- x$get()
  inver <- solve(data)
  x$setInverse(inver)
  inver  
  ##inverse of the matrix is returned
       
}
