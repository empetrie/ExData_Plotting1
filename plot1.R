library(dplyr)
data_all <- read.table("../Desktop/Coursera/Course #4/household_power_consumption.txt", header = T, sep = ";")
data <- data_all %>% filter(as.character(Date) == "2/1/2007"| as.character(Date) == "2/2/2007")

png("plot1.png", width = 480, height = 480)
with(data, hist(as.numeric(Global_active_power), main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red"))
dev.off()
