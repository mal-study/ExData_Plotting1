generatePlot3 <- function() {

    # Read the power data:
    source("readPowerData.R")
    powerData <- readPowerData("household_power_consumption.txt", "2007-02-01", "2007-02-02")

    # Switch to PNG output:
    png("plot3.png")

    # Create the base plot w/Sub_metering_1 in black:
    with(powerData, plot(
        DateTime,
        Sub_metering_1,
        type = "l",
        xlab = "",
        ylab = "Energy sub metering"
        ))

    # Add Sub_metering_2 in red, and Sub_metering_3 in blue:
    with(powerData, points(DateTime, Sub_metering_2, type = "l", col = "red"))
    with(powerData, points(DateTime, Sub_metering_3, type = "l", col = "blue"))

    # Add a legend in the top-right with colored lines:
    legend(
        "topright",
        lty = 1, # solid line
        col = c("black", "red", "blue"),
        legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
        )

    # Close the PNG file:
    dev.off()
}