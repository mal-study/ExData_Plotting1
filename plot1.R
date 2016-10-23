generatePlot1 <- function() {
    
    # Read the power data:
    source("readPowerData.R")
    powerData <- readPowerData("household_power_consumption.txt", "2007-02-01", "2007-02-02")

    # Switch to PNG output:
    png("plot1.png")

    # Create the histogram:
    hist(
        powerData$Global_active_power,
        col = "red",
        xlab = "Global Active Power (kilowatts)",
        main = "Global Active Power"
        )

    # Close the PNG file:
    dev.off()
}