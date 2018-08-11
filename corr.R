corr <- function(directory, threshold = 0)
{
  filelist <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
  corr_vector <- NULL
  for (i in 1:length(filelist))
  {
    data <- read.csv(filelist[i])
    complete_data <- data[complete.cases(data),]
    if(nrow(complete_data) > threshold)
    {
      corr_vector<- c(corr_vector, cor(complete_data[,"sulfate"],complete_data[,"nitrate"]))
    }
  }
  return(corr_vector)
}
