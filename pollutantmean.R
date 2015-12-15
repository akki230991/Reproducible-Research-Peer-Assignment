pollutantmean <- function(directory, pollutant, id = 1:332) {
    
    #directory<-"C:/Users/Ankit Gupta/Desktop/Data Science/data/specdata"  #Setting the current directory to required directory where files are present
    #setwd(directory)
    
    # Reading all the files in the directory specdata
    allcsvFiles<- list.files(path= directory, full.names = TRUE)
    Specdata<-data.frame()
    for(i in id)
    {
        Specdata<-rbind(Specdata, read.csv(allcsvFiles[i]))
    }
    if(pollutant=="sulfate"){
        print(mean(Specdata$sulfate, na.rm=TRUE))  #removing missing values
    }
    if(pollutant=="nitrate"){
        print(mean(Specdata$nitrate, na.rm=TRUE))  #removing missing values
        
    }
}