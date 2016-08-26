head(subSetPowerData)

str(subSetPowerData)

#plot2

Global_active_power_num <- as.numeric(subSetPowerData$Global_active_power)

datetime <- strptime(paste(subSetPowerData$Date, subSetPowerData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
datetime

plot(datetime,Global_active_power_num,type="l", xlab="", ylab="Global Active Power (kilowatts)" )
dev.copy(png, file="DaysGlobalActivePower.png",width=480, height=480)
dev.off
