png("plot3.png", 480, 480)

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

dev.off()
