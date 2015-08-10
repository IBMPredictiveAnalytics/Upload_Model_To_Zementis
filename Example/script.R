library("httr")
library(XML)
library(plyr)



# This function is used to generate automatically the dataModel for SPSS Modeler
getMetaData <- function (data) {
  if( is.null(dim(data)))
    stop("Invalid data received: not a data.frame")
  if (dim(data)[1]<=0) {
    print("Warning : modelerData has no line, all fieldStorage fields set to strings")
    getStorage <- function(x){return("string")}
  } else {
    getStorage <- function(x) {
      x <- unlist(x)
      res <- NULL
      #if x is a factor, typeof will return an integer so we treat the case on the side
      if(is.factor(x)) {
        res <- "string"
      } else {
        res <- switch(typeof(x),
                      integer="integer",
                      double = "real",
                      "string")
      }
      return (res)
    }
  }
  col = vector("list", dim(data)[2])
  for (i in 1:dim(data)[2]) {
    col[[i]] <- c(fieldName=names(data[i]),
                  fieldLabel="",
                  fieldStorage=getStorage(data[i]),
                  fieldMeasure="",
                  fieldFormat="",
                  fieldRole="")
  }
  mdm<-do.call(cbind,col)
  mdm<-data.frame(mdm)
  return(mdm)
}



csv<-modelerData
write.csv(csv,"c:/iris_temp.csv")
url = "https://myadapa.zementis.com:443/adapars/apply/%%model%%"
data<-POST(url, authenticate("%%username%%", "%%pwd%%"), body=list(file=upload_file("c:/iris_temp.csv")))
html <- content(data, useInternalNodes=T)
df <- data.frame(matrix(unlist(html$outputs), ncol=length(html$outputs[[1]]), byrow=T))
names(df)=names(html$outputs[[1]])
data <- cbind(csv,df)
file.remove("c:/iris_temp.csv")



modelerData <- data
modelerDataModel <- getMetaData(modelerData)

