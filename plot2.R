data <- read.table("household_power_consumption.txt",sep = ";",na.strings = "?",header = TRUE)
data1 <- subset(data,IDate %in% c("1/2/2007","2/2/2007"))

data1$Time <- strptime(paste(data1$IDate, data1$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot2.png")
plot(data1$Time, data1$Global_active_power,type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()