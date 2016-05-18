
## In this function I combine my two functions makeCacheMatrix and cacheSolve 

makeCacheMatrix <- function(x = matrix()) {
m<- NULL
set<- function(y){
x<<-y
m<<-NULL
}
get<-function() x
setinversematrix<- function(solve) m<<-solve
getinversematrix<- function() m
list(set=set,get=get,setinversematrix=setinversematrix,getinversematrix=getinversematrix)
}


## here a matrix x is stored in an invisible cache, such that I could get it from another function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<-x$getinversematrix()
        if(!is.null(m)){
        message("getting cached data")
        return(m)
        }
        data<-x$get()
        m<-solve(data,...)
        x$setinversematrix(m)
        m
}
