d <- read.table("household_power_consumption.txt", sep=";", header=T, stringsAsFactors=F, na.strings="?")
d$Date <- as.Date(d$Date, "%d/%m/%Y")
d <- subset(d, d$Date == "2007-02-01" | d$Date == "2007-02-02")
png(file="plot1.png")
hist(d$Global_active_power, xlab="Global Active Power (kilowatts)", main="Global Active Power", col="red")
dev.off()