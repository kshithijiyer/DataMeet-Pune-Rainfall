#Unpivot Me

#Purpose:
#This script can be used to unpivot data from 
#.xlsx files and generate .csv files out of it.

#Data: Rainfall Data 
#File format: .xlsx 
#Manual inputs needed:Yes
#Organization: Data Meet Pune
#Author: Kshithij Iyer
#Email: ahole@disroot.org
#Date of last update: 20/2/2018

#importing the needed libraries
library("xlsx")
library("tidyr")
setwd("./Processed-Data")

#getting inputs from user
DataFile<-file.choose()

#You'll have to uncomment the code given below this point if you want to create CSV files for a given sheet instead of the entire .xlsx file.
#SheetIndex<-as.integer(readline(prompt = "Enter sheet Index[>1]:"))


#Reading the sepcified sheet from the xlsx file.
#Data<-read.xlsx( DataFile, sheetIndex = SheetIndex, header=TRUE, stringsAsFactors=FALSE)

#unpivoting the data.
#FormattedData<-gather(Data,"Values"=4:15)
#View(FormattedData)
#Results<-FormattedData[order(FormattedData$Year),]
#Results<-data.frame(Results$State,Results$District,Results$Year,Results$key,as.Date(paste(Results$key,"01",Results$Year),format='%B %d %Y'),Results$value)
#names(Results)<-c("State","District","Year","Month","Date","Value")
#Results<-Results[!is.na(Results$State),]
#If you want to manually see the output before creating a csv uncomment the below given line.
#View(Results)

#Writing the data to a csv file.
#OutputFileName<-paste(unique(Results$State),".csv")
#write.table(Results,sep=",",file=OutputFileName,col.names = c("State","District","Year","Month","Date","Value"))

#Same thing goes in a loop now. :p
for(SheetIndex in 2:37){
  #Reading the sepcified sheet from the xlsx file.
  Data<-read.xlsx( DataFile, sheetIndex = SheetIndex, header=TRUE, stringsAsFactors=FALSE)
  
  #unpivoting the data.
  FormattedData<-gather(Data,"Values"=4:15)
  Results<-FormattedData[order(FormattedData$Year),]
  Results<-data.frame(Results$State,Results$District,Results$Year,Results$key,as.Date(paste(Results$key,"01",Results$Year),format='%B %d %Y'),Results$value)
  names(Results)<-c("State","District","Year","Month","Date","Value")
  Results<-Results[!is.na(Results$State),]

  #Writing the data to a csv file.
  OutputFileName<-paste(unique(Results$State),".csv")
  OutputFileName
  write.table(Results,sep=",",file=OutputFileName,col.names = c("State","District","Year","Month","Date","Value"))
}
