png("plot4.png", 480, 480)

#prepare panels

par(mfcol = c(2,2)) #fill 2 in the first column, then another 2 in the second.

#sub-plot 1 - same as plot 2
with(pc.household,plot(DateTime1,Global_active_power , type = "l", xlab = "", ylab = "Global Active Power (kilowatts)") )

#sub-plot 2 - same as plot 3
with(
        pc.household,
        plot(
                DateTime1,
                Sub_metering_1,
                type = "l",
                xlab = "",
                ylab = "Energy Sub Metering"
        )
)
with(pc.household, lines(DateTime1, Sub_metering_2, col = "red"))
with(pc.household, lines(DateTime1, Sub_metering_3, col = "blue"))

#sub-plot 3 - same as plot 2 but with Voltage as Y
with(pc.household,plot(DateTime1,Voltage , type = "l", ylab = "Voltage") )

#sub-plot 4 - same as above, but with Global Reactive Power as Y
with(pc.household,plot(DateTime1,Global_reactive_power , type = "l", ylab = "Global_reactive_power") )


#close panels and set png device to off

par(mfrow = c(1,1)) # set back split parameter
dev.off()
dev.new()
