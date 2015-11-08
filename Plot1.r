library(data.table)
setwd("d:/SVN/ExData_Plotting1/")

#readData
data <- readRDS("FilteredData.rds")

#create PNG file
png("plot1.png", width = 480, height = 480)
hist(data$Global_active_power, col="red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
dev.off()
