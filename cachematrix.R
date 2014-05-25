## Put comments here that give an overall description of what your
## functions do
## Assignment #2 R Programming
## This code will create functions to calculate/solve the matrix and inverse matrix

## Write a short comment describing this function :
##
## makeCacheMatrix: return a list of functions to:
## 1. Set the value of the matrix
## 2. Get the value of the matrix
## 3. Set the value of the inverse matrix
## 4. Get the value of the inverse matrix

makeCacheMatrix <- function(x = numeric()) {
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setinv <- function(solve) s <<- solve
  getinv <- function() s
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}

## Write a short comment describing this function
##
## cacheSolve: Computes the inverse matrix. 
cacheSolve <- function(x, ...) {
    inv <- x$getinv()
    data <- x$get()
    inv <- solve(data, ...)
    x$setinv(inv)
    inv
}
