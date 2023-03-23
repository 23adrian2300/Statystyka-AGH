PRS <- function(dims, number_of_points, fn){
  number_of_dimensions = nrow(dims)
  
  points <- matrix(runif(number_of_dimensions*number_of_points), ncol=number_of_dimensions)
  points <- apply(points, 2, function(x) x*(dims[,2]-dims[,1])+dims[,1])
  
  vals <- apply(points, 1, fn)
  min_index <- which.min(vals)
  min_val <- vals[min_index]
  return(min_val)
}