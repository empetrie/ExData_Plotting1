library(dplyr)
data_all <- read.table("../Desktop/Coursera/Course #4/household_power_consumption.txt", header = T, sep = ";")
data <- data_all %>% filter(as.character(Date) == "2/1/2007"| as.character(Date) == "2/2/2007")

datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%m/%d/%Y %H:%M:%S")
data2 <- cbind(datetime, data)

png("plot3.png", width = 480, height = 480)
  with(data2,{
    plot(Sub_metering_1~datetime, type = "l", ylab = "Energy sub metering", xlab = "")
    lines(Sub_metering_2~datetime, col = "red")
    lines(Sub_metering_3~datetime, col = "blue")
  })
  legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, lwd = 2.5, col = c("black", "red", "blue"))

dev.off()
