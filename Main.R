library(smoof)
source("Functions.R")


nuberm_of_dimensions_list <- c(2, 10, 20)
number_of_runs <- 50
number_of_points <- 100

# Ackley function
cat("Ackley funtion:\n\n")
file.remove("SolutionAckley.txt")
for (number_of_dimensions in nuberm_of_dimensions_list){
  ackley_function <- makeAckleyFunction(number_of_dimensions)
  result <- get_results(number_of_runs,number_of_points, number_of_dimensions, ackley_function, "Ackley")
  
  cat("dimensions:", number_of_dimensions, "\n", 
      "ms_mean:", result$ms_mean, "\n",
      "ms_sd:", result$ms_sd, "\n",
      "ms_confidence:", result$ms_confidence, "\n",
      "prs_mean:", result$prs_mean, "\n",
      "prs_sd:", result$prs_sd, "\n",
      "prs_confidence:", result$prs_confidence, "\n",
      "difference:", abs(result$ms_mean - result$prs_mean), "\n\n",
      file = "SolutionAckley.txt", append = TRUE)
}


# Rosenbrock function
cat("Rosenbrock funtion:\n\n")
file.remove("SolutionRosenbrock.txt")
for (number_of_dimensions in nuberm_of_dimensions_list){
  rosenbrock_function <- makeRosenbrockFunction(number_of_dimensions)
  result <- get_results(number_of_runs, number_of_points, number_of_dimensions, rosenbrock_function, "Rosenbrock")
  
  cat("dimensions:", number_of_dimensions, "\n", 
      "ms_mean:", result$ms_mean, "\n",
      "ms_sd:", result$ms_sd, "\n",
      "ms_confidence:", result$ms_confidence, "\n",
      "prs_mean:", result$prs_mean, "\n",
      "prs_sd:", result$prs_sd, "\n",
      "prs_confidence:", result$prs_confidence, "\n",
      "difference:", abs(result$ms_mean - result$prs_mean), "\n\n",
      file = "SolutionRosenbrock.txt", append = TRUE)
}