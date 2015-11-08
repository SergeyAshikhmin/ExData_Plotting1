library(data.table)
library(dplyr)
setwd("D:/MyDoc/BigData/coursera.org/Data Science Specialization/Exploratory Data Analysis/Course Project 1")

########################Loading the data########################

filename <- "household_power_consumption.txt"
data <- fread(input = filename,sep = ";",header = TRUE, na="?")
FilteredData<-filter(data, Date == "1/2/2007" | Date == "2/2/2007")

FilteredData[,DateTime := as.POSIXct(paste(Date, Time), format = "%d/%m/%Y %H:%M:%S")]
FilteredData$Date <- as.Date(FilteredData$Date, "%d/%m/%Y")


#Copy files to forked repository
saveRDS(FilteredData, file = "FilteredData.rds")
file.copy("FilteredData.rds","d:/SVN/ExData_Plotting1/")
file.copy("load_data.r","d:/SVN/ExData_Plotting1/")







