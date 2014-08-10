# Exploratory Data Analysis
# Author: CM
# Date: 8/9/2014
# Code to generate Plot 2

# Data is read in file plot1.R

# Plot 2
png(filename="plot2.png", width=480, height=480)

plot(x=df$FTime, y=df$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()