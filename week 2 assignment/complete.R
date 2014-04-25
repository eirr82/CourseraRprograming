complete <- function(directory, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases
  
  directory <- "C:/Users/Eirr/Documents/data/specdata"
  files <- list.files(directory)   
  data <- data.frame()
  
  id.vector<-c() 
  obs.vector<-c()
  for (x in id){
    n.obs<-nrow(na.omit(read.csv(list.files()[x])))
    obs.vector<-c(obs.vector,n.obs)
    id.vector<-c(id.vector,x)
  }
  print(as.data.frame(cbind(id=id.vector,nobs=obs.vector)))

  
}