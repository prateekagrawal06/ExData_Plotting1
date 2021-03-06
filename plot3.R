data <- read.table("household_power_consumption.txt",sep = ";",na.strings = "?",header = TRUE)
data1 <- subset(data,IDate %in% c("1/2/2007","2/2/2007"))

data1$Time <- strptime(paste(data1$IDate, data1$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot3.png")
plot(data1$Time, data1$Sub_metering_1,type="l", xlab="", ylab="Energy sub metering",col = "black")
lines(data1$Time, data1$Sub_metering_2,type="l", xlab="",col = "red")
lines(data1$Time, data1$Sub_metering_3,type="l", xlab="",col = "blue")
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty = 1,lwd = 2,col = c("black","red","green"))
dev.off()