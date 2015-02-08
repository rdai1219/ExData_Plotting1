data <- read.table("household_power_consumption.txt", sep=";", header=T, na.strings="?")
data2 <- data[which(data$Date%in%c("1/2/2007","2/2/2007")),]
data2$datetime <- strptime(paste(data2$Date, data2$Time, sep=" ")
, "%d/%m/%Y %H:%M:%S")
png(filename="plot4.png")
par(mfcol=c(2,2))

with(data2,plot(datetime,Global_active_power,type="l", xlab="", ylab="Global Active Power (kilowatts)", main=""))

with(data2,plot(datetime,Sub_metering_1,type="n", xlab="", ylab="Energy sub metering", main=""))
with(data2, lines(datetime, Sub_metering_1, col="black"))
with(data2, lines(datetime, Sub_metering_2, col="red"))
with(data2, lines(datetime, Sub_metering_3, col="blue"))
legend("topright",lty=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), box.col="white")

with(data2,plot(datetime,Voltage,type="l", main=""))

with(data2,plot(datetime,Global_reactive_power,type="l", main=""))
dev.off()


