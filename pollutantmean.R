pollutantmean <- function (directory, pollutant, id =1:332){
  
  directory <- "C:/Users/Eirr/Documents/data/specdata"
  files <- list.files(directory)   
  data <- data.frame()
  
  for ( i in id) {
    data <- rbind (data, read.csv(files[i]))
  }
  
  pollutant <- if (pollutant=="sulfate") {
        meansulfate <- mean(data$sulfate,na.rm=TRUE)
        print(meansulfate)
         
       } else {
             
             meannitrate <- mean(data$nitrate,na.rm=TRUE)
             print(meannitrate)
          }
}