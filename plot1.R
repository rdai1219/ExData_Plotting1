data <- read.table("household_power_consumption.txt", sep=";", header=T, na.strings="?")
data2 <- data[which(data$Date%in%c("1/2/2007","2/2/2007")),]
png(filename="plot1.png")
hist(data2$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()