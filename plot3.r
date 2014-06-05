d <- read.table("household_power_consumption.txt", sep=";", header=T, stringsAsFactors=F, na.strings="?")
d$Date <- as.Date(d$Date, "%d/%m/%Y")
d <- subset(d, d$Date == "2007-02-01" | d$Date == "2007-02-02")
d$DateTime <- strptime(paste(d$Date, d$Time),format="%Y-%m-%d %H:%M:%S")
png(file="plot3.png")
plot(d$DateTime, d$Sub_metering_1, xlab="", ylab="Energy sub metering", type="n")
lines(d$DateTime,d$Sub_metering_1, col="black")
lines(d$DateTime,d$Sub_metering_2, col="red")
lines(d$DateTime,d$Sub_metering_3, col="blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),col=c("black","red","blue"))
dev.off()
