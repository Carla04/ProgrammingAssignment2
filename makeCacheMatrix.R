makeCacheMatrix<- function(x =data.matrix()){
        
m <- NULL
set <- function(y){
        x<<-y
        m<<-NULL
}
        
get<-function() x
setinversematrix<- function(solve) m<<- solve
getinversematrix<- function() m

list(set=set,get=get, setinversematrix=setinversematrix,getinversematrix=getinversematrix)
}