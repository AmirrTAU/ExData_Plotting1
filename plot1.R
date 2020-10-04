          
png("plot1.png",480,480)

hist(
        pc.household$Global_active_power,
        main = "Global Active Power",
        col = "red",
        xlab = "Global Active Power (kilowatts)"
)

dev.off()
 