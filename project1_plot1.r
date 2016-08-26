install.packages('data.table')
library(data.table)

#reading data
dataLink <- "C:/Big Data and Hadoop/R/R Tutorial/exdata_data_household_power_consumption/household_power_consumption.txt"
powerData <- read.table(dataLink, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
names(powerData)
head(powerData)

#subsetting data from '1-Feb-2007' to '2-Feb-2007'
subSetPowerData <- powerData[powerData$Date %in% c("1/2/2007","2/2/2007") ,]
head(subSetPowerData)

str(subSetPowerData)

# plot1

Global_active_power_num <- as.numeric(subSetPowerData$Global_active_power)
hist(Global_active_power_num,col="red", xlab="Global Active Power (kilowatts)", 
     main="Global Active Power")
dev.copy(png, file="GlobalActivePower.png",width=480, height=480)
dev.off
