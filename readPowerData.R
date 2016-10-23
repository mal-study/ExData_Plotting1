readPowerData <- function(path, startDate, endDate) {
    # Read the data:
    powerData <- read.table(path, header = TRUE, sep = ";", na.strings = "?")

    # Create a new combined DateTime field for plotting:
    powerData$DateTime <- strptime(paste(powerData$Date, powerData$Time), "%d/%m/%Y %H:%M:%S")

    # Convert the Date field into a true Date data type:
    powerData$Date <- as.Date(powerData$Date, format = "%d/%m/%Y")

    # Subset to get only the requested dates:
    powerData <- powerData[powerData$Date >= startDate & powerData$Date <= endDate,]

    return(powerData)
}