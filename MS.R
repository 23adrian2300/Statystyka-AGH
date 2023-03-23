MS <- function(dims, number_of_points, fn){
  num_dims = nrow(dims)
  minimum_point <- rep(0, num_dims)
  minimum <- Inf
  
  for(i in 1:number_of_points){
    p <- runif(num_dims, dims[1,1], dims[1,2])
    p <- optim(par = p, fn = fn, method = "L-BFGS-B", lower = dims[,1], upper = dims[,2])$par
    val <- fn(p)
    if (val < minimum){
      minimum_point <- p
      minimum <- val
    }
  }
  return(minimum)
}