# This will have to be changed to to location of the unzipped file
dataFile <- "~/Stuff/DataScienceCourseraWork/Exploratory Data Analysis/course project 1/household_power_consumption.txt"
readData <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subsetData <- readData[readData$Date %in% c("1/2/2007","2/2/2007") ,]

globalActivePower <- as.numeric(subsetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()