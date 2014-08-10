# Exploratory Data Analysis
# Author: CM
# Date: 8/9/2014
# Code to generate Plot 1
# For this assignment data is loaded when running script plot1.R, therefore
# script plot1.R has to be executed first.
#
# File containing the original dataset was not commited to Github because 
# it is too large 133Mb.

# Path has to be changed based on source path
setwd("~/Desktop/maine/data_science/coursera/ExpData")

# Reads data
d <- read.csv("./household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")

# Creates data/time related variables
d$FDate <- strptime(d$Date,"%d/%m/%Y")
d$DateTime <- paste(d$Date,d$Time,sep=" ")
d$FTime <- strptime(d$DateTime,"%d/%m/%Y %H:%M:%S")

# Filters rows based on date
df <- subset(d,FDate >= strptime("1/2/2007","%d/%m/%Y") & FDate <= strptime("2/2/2007","%d/%m/%Y"))

# Plot 1
png(filename="plot1.png", width=480, height=480)

hist(x=df$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
