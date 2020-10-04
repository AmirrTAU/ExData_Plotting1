## Read File 

pc.household <- read.csv("household_power_consumption.txt", sep = ";" , as.is = T)
#some checks
head(pc.household)
str(pc.household)

#this is for use later
pc.household$DateTime <- paste(pc.household$Date, pc.household$Time)

#eliminate unnecessary data

pc.household$Date <- strptime(pc.household$Date, format = "%d/%m/%Y")


pc.household <- subset(pc.household, Date %in% c("2007-02-02","2007-02-01"))
str(pc.household)

#reformat classes (as required later)
pc.household$Global_active_power <- as.numeric(pc.household$Global_active_power) 

pc.household$DateTime1 <- strptime(pc.household$DateTime, format = "%d/%m/%Y %H:%M:%S")

pc.household$DateTime2 <- as.POSIXlt(pc.household$DateTime1, format = "%H:%M:%S")

str(pc.household)

#use these to quickly create all charts:
source("plot1.r")
source("plot2.r")
source("plot3.r")
source("plot4.r")

