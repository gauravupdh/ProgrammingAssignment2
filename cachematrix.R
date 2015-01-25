makeCacheMatrix <- function(a = matrix()) {
  m<-NULL
  set<-function(b){
  x<<-y
  m<<-NULL
}
get<-function() a
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)
}

cacheSolve <- function(a=matrix(), ...) {
    m<-x$getmatrix()
    if(!is.null(m)){
      message("recieving cached data")
      return(m)
    }
    matrix<-x$get()
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m
}
