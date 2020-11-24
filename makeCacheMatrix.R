makeCacheMatrix <- function(data_matrix) {
  inverse_matrix <- NULL
  
  set_data_matrix <- function(new_matrix = matrix()) {
    data_matrix <<- new_matrix
    inverse_matrix <<- NULL
  }
  
  get_data_matrix <- function() {
    data_matrix
  }

  set_solve_matrix <- function(){
    inverse_matrix <<- solve(data_matrix) 
    inverse_matrix
  }
  
  get_solve_matrix <- function() {
    inverse_matrix
  }
  
  list(set_data_matrix = set_data_matrix, 
       get_data_matrix = get_data_matrix,
       set_solve_matrix = set_solve_matrix,
       get_solve_matrix = get_solve_matrix)
}