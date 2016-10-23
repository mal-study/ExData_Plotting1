generatePlot2 <- function() {

    # Read the power data:
    source("readPowerData.R")
    powerData <- readPowerData("household_power_consumption.txt", "2007-02-01", "2007-02-02")

    # Switch to PNG output:
    png("plot2.png")

    # Create the line plot:
    with(powerData, plot(
        DateTime,
        Global_active_power,
        type = "l",
        xlab = "",
        ylab = "Global Active Power (kilowatts)"
        ))

    # Close the PNG file:
    dev.off()
}