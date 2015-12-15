complete <- function(directory, id = 1:332){
    
    #directory<-"C:/Users/Ankit Gupta/Desktop/Data Science/data/specdata"  #Setting the current directory to required directory where files are present
    #setwd(directory)
    
    # Reading all the files in the directory specdata
    allcsvFiles<- list.files(path= directory, full.names = TRUE)
    Specdata<- data.frame()
    completecases<- data.frame()
    
    for(i in id)
    {
        Specdata<-read.csv(allcsvFiles[i], header = TRUE)
        nobs<-sum(complete.cases(Specdata))
        completecases<- rbind(completecases, data.frame(i, nobs))
        
    }
    completecases
    
}
    
    
    