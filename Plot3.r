library(data.table)
setwd("d:/SVN/ExData_Plotting1/")

#readData
data <- readRDS("FilteredData.rds")

#Set locale to get proper week days
Sys.setlocale("LC_TIME", "English")

#create PNG file
png("plot3.png", width = 480, height = 480)

plot(data$DateTime, data$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
lines(data$DateTime, data$Sub_metering_2, type="l", col="red")
lines(data$DateTime, data$Sub_metering_3, type="l", col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))


dev.off()
