corr <- function(directory, threshold = 0) {
    
    #directory<-"C:/Users/Ankit Gupta/Desktop/Data Science/data/specdata"  #Setting the current directory to required directory where files are present
    #setwd(directory)
    
    source("complete.R")
    completeCases<- complete(directory)
    casesAboveThreshold<- completeCases[completeCases$nobs> threshold, 1]
    allcsvFiles<- list.files(path= directory, full.names = TRUE)
    correlations=rep(NA, length(casesAboveThreshold))
    for(i in casesAboveThreshold)
    {
        Specdata<-read.csv(allcsvFiles[i])
        completeCases<- complete.cases(Specdata)
        availsulfatedata<- Specdata[completeCases, 2]
        availnitratedata<- Specdata[completeCases, 3]
        correlations[i]<-cor(x=availsulfatedata, y=availnitratedata)
        
    }
    correlations<- correlations[complete.cases(correlations)]
}