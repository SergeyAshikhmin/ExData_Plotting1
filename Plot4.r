library(data.table)
setwd("d:/SVN/ExData_Plotting1/")

#readData
data <- readRDS("FilteredData.rds")

#Set locale to get proper week days
Sys.setlocale("LC_TIME", "English")

#create PNG file
png("plot4.png", width = 480, height = 480)
par(mfrow=c(2,2))	

plot(data$DateTime, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")

plot(data$DateTime, data$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

plot(data$DateTime, data$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
lines(data$DateTime, data$Sub_metering_2, type="l", col="red")
lines(data$DateTime, data$Sub_metering_3, type="l", col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))

plot(data$DateTime, data$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")

dev.off()
