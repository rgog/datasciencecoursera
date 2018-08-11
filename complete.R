complete <- function(directory, id = 1:332)
{
  nobs <- numeric()
  for(i in id)
  {
    prefix <- "";
    if (i<10)prefix <- "00"
    else if(i<100) prefix <- "0"
    path<-paste(getwd(),"/",directory, "/", prefix, i, ".csv", sep="")
    nobs <- c(nobs,sum(complete.cases(read.csv(path))))
  }
  return(data.frame(id,nobs))
}