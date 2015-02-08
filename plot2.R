data <- read.table("household_power_consumption.txt", sep=";", header=T, na.strings="?")
data2 <- data[which(data$Date%in%c("1/2/2007","2/2/2007")),]
data2$datetime <- strptime(paste(data2$Date, data2$Time, sep=" ")
, "%d/%m/%Y %H:%M:%S")
png(filename="plot2.png")
with(data2,plot(datetime,Global_active_power,type="l", xlab="", ylab="Global Active Power (kilowatts)", main=""))
dev.off()


