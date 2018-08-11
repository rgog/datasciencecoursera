pollutantmean <- function(directory, pollutant, id = 1:332)
{
  values <- numeric()
  for (i in id)
  {
    prefix <- "";
    if (i<10)prefix <- "00"
    else if(i<100) prefix <- "0"
    path<-paste(getwd(),"/",directory, "/", prefix, i, ".csv", sep="")
    data <- read.csv(path)
    values <- c(values,data[[pollutant]])
  }
  return(mean(values, na.rm = TRUE))
}