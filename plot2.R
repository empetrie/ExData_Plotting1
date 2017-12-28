library(dplyr)
data_all <- read.table("../Desktop/Coursera/Course #4/household_power_consumption.txt", header = T, sep = ";")
data <- data_all %>% filter(as.character(Date) == "2/1/2007"| as.character(Date) == "2/2/2007")

datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%m/%d/%Y %H:%M:%S")
data2 <- cbind(datetime, data)

png("plot2.png", width = 480, height = 480)
with(data2, plot(datetime, as.numeric(Global_active_power), type = "l", xlab = "", ylab = "Global Active Power (kilowatts)"))
dev.off()
