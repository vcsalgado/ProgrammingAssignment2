cacheSolve <- function(function_base, request_matrix=NULL) {
  #Get matrix in cache
  cache_matrix <- function_base$get_data_matrix()
  
  if(!is.null(request_matrix)){
    #Compare cached data_matrix vs request matrix
    if(!identical(cache_matrix, request_matrix)){
      #Set in cache requested_matrix and it Inverse
      function_base$set_data_matrix(request_matrix)
    }
  }
  
  solved_matrix <- function_base$get_solve_matrix()
  if(!is.null(solved_matrix)){
    message("Inverse get from cache")
    return(solved_matrix)
  }
  
  message("calculate Request_Matrix Inverse and set in cache")
  solved_matrix <- function_base$set_solve_matrix()
  solved_matrix
}