library(data.table)
setwd("d:/SVN/ExData_Plotting1/")

#readData
data <- readRDS("FilteredData.rds")

#Set locale to get proper week days
Sys.setlocale("LC_TIME", "English")

#create PNG file
png("plot2.png", width = 480, height = 480)
plot(data$DateTime, data$Global_active_power,type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
