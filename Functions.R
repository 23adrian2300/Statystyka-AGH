source("PRS.R")
source("MS.R")
source("Diagrams.R")

get_bounds <- function(f, number_of_dimensions){
  lower = attr(f,"par.set")$pars$x$lower
  upper = attr(f,"par.set")$pars$x$upper
  array(c(lower, upper), c(number_of_dimensions,2))
}

get_results <- function(number_of_runs, number_of_points, number_of_dimensions, tested_function, function_name){
  calls_count <- 0
  tetster_function <- function(x) {
    calls_count <<- calls_count + 1
    tested_function(x)
  }
  
  dimensions <- get_bounds(tested_function, number_of_dimensions)
  calls_count <- 0
  
  ms <- get_ms(number_of_runs, dimensions, number_of_points, function_name, tetster_function)
  ms_mean <- get_mean(ms)
  ms_sd <- get_standard_deviation(ms)
  ms_confidence <- get_confidence_interval(ms, ms_mean, ms_sd, number_of_runs)
  budget <- get_budget(calls_count, number_of_runs, number_of_points)
  
  prs_num_runs <- get_prs_num_runs(number_of_runs, budget, number_of_points)
  prs <- get_prs(prs_num_runs, dimensions, number_of_points,function_name, tested_function)
  prs_mean <- get_mean(prs)
  prs_sd <- get_standard_deviation(prs)
  prs_confidence <- get_confidence_interval(prs, prs_mean, prs_sd, prs_num_runs)
  
  #testing <- t.test(prs, ms)
  return(list(ms_mean = ms_mean, prs_mean = prs_mean, ms_sd=ms_sd, prs_sd=prs_sd,
              ms_confidence=ms_confidence, prs_confidence=prs_confidence))
}


get_mean <- function(values) {
  mean <- mean(values)
  return(mean)
}

get_standard_deviation <- function(values) {
  sd <- sd(values)
  return(sd)
}

get_confidence_interval <- function(values, mean, sd, number_of_runs) {
  confidence <- c(mean - qnorm(.975)*sd/sqrt(number_of_runs), mean + qnorm(.975)*sd/sqrt(number_of_runs))
  return(confidence)
}

get_budget <- function(calls_count, number_of_runs, number_of_points) {
  budget <- calls_count %/% number_of_runs - number_of_points
  return(budget)
}

get_prs_num_runs <- function(number_of_runs, budget, number_of_points) {
  prs_num_runs <- (number_of_runs * budget) %/% number_of_points
  return(prs_num_runs)
}
