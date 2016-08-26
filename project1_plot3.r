head(subSetPowerData)

str(subSetPowerData)

#plot3

datetime <- strptime(paste(subSetPowerData$Date, subSetPowerData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
datetime

subMetering1 <- as.numeric(subSetPowerData$Sub_metering_1)
subMetering2 <- as.numeric(subSetPowerData$Sub_metering_2)
subMetering3 <- as.numeric(subSetPowerData$Sub_metering_3)

plot(datetime,subMetering1,type="l", xlab="", ylab="Energy sub metering")
lines(datetime,subMetering2,type="l", col="red")
lines(datetime,subMetering3,type="l", col="blue")
legend("topright", col=c("black","red","blue"), 
       c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1), lwd=c(1,1))
dev.copy(png, file="EnergyPlot.png",width=480, height=480)
dev.off