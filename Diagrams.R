get_ms <- function(ms_num_runs, dimensions, number_of_points, name_of_function ,fn_with_counter) {
  ms <- replicate(ms_num_runs, MS(dimensions, number_of_points, fn_with_counter))
  png(file = paste("Histogramy/", name_of_function, " ", number_of_dimensions, " Multi-start", ".png", sep = ""))
  hist(ms, main=paste(name_of_function, " ", number_of_dimensions, " Multi-start", sep = ""), xlab = "Values", col = "red",border = "black")
  abline(v = mean(ms), col = "black", lwd = 2, lty = 2)
  legend("topright", c("Średnia"), lty=c(2), col=c("red"))
  dev.off()
  
  png(file = paste("Wykresy/", name_of_function, " ", number_of_dimensions, " Multi-start", ".png", sep = ""))
  boxplot(ms, main=paste(name_of_function, " ", number_of_dimensions, " Multi-start", sep = ""), col = "orange",border = "black")
  dev.off()
  
  return(ms)
}


get_prs <- function(prs_num_runs, dimensions, number_of_points, name_of_function,tested_function) {
  prs <- replicate(prs_num_runs, PRS(dimensions, number_of_points, tested_function))
  png(file = paste("Histogramy/", name_of_function, " ", number_of_dimensions, " Pure Random Search", ".png", sep = ""))
  hist(prs, main=paste(name_of_function, " ", number_of_dimensions, " Pure Random Search", sep = ""), plot=TRUE, xlab = "Values", col = "blue",border = "black")
  abline(v = mean(prs), col = "black", lwd = 2, lty = 2)
  legend("topright", c("Średnia"), lty=c(2), col=c("red"))
  dev.off()
  
  png(file = paste("Wykresy/", name_of_function, " ", number_of_dimensions, " Pure Random Search", ".png", sep = ""))
  boxplot(prs, main=paste(name_of_function, " ", number_of_dimensions, " Pure Random Search", sep = ""), col = "green",border = "black")
  dev.off()
  
  return(prs)
}
