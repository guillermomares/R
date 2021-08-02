## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y){ #set the values of thhe matrix
                x <<- y
                inv <-- NULL
                
        }
        get <- function(){x}  # here will get the values of the matrix
        
        setInverse <- function(inverse) {inv <<- inverse} #set the inverse function
        getInverse<- function(){inv}
        
        list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        inv<-x$getInverse()
        if(!is.null(inv)){
                message("getting cached data")
                return(inv)
        }
        mat<-x$get()
        inv <-solve(mat,...)
        x$setInverse(inv)
        inv
}

#pmatrix<-makeCacheMatrix(matrix(1:4,nrow=2,ncol=2))

#pmatrix$get()
#pmatrix$getInverse()

#cacheSolve(pmatrix)

