          
png("plot2.png",480,480)

with(pc.household,plot(DateTime1,Global_active_power , type = "l", xlab = "", ylab = "Global Active Power (kilowatts)") )


dev.off()
 