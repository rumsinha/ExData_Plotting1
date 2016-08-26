voltage_num <- as.numeric(subSetPowerData$Voltage)
datetime <- strptime(paste(subSetPowerData$Date, subSetPowerData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
Global_reactive_power_num <- as.numeric(subSetPowerData$Global_reactive_power)
par(mfrow = c(2,2))

  #plot1
  plot(datetime,Global_active_power_num,type="l", xlab="", ylab="Global Active Power (kilowatts)" )
  
  #plot2
  plot(datetime,voltage_num,type="l", xlab="datetime", ylab="Voltage" )

  #plot3
  
  plot(datetime,subMetering1,type="l", xlab="", ylab="Energy sub metering")
  lines(datetime,subMetering2,type="l", col="red")
  lines(datetime,subMetering3,type="l", col="blue")
  legend("topright", col=c("black","red","blue"), 
         c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1), lwd=c(1,1))
  
  #plot4
  
  plot(datetime,Global_reactive_power_num,type="l", xlab="datetime", ylab="Global_reactive_power" )
  
  dev.copy(png, file="FinalPlot.png",width=480, height=480)
  dev.off