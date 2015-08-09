##################################################################
## Intro : load Data & convert dates & factor to numeric & subset
##################################################################

hcp <- read.csv("~/R/Coursera/Exploratory_data_analysis/Data/household_power_consumption.txt", sep=";")
hcp$Date <- as.Date(hcp$Date, format = "%d/%m/%Y")
subdata <- subset(hcp, Date >= "2007-02-01" & Date <= "2007-02-02" )
subdata$Global_active_power <- as.numeric(subdata$Global_active_power)

## Creating a variable with date & time aggregated

subdata$aggDateTime <- paste(subdata$Date, subdata$Time)

## Format the new variable
subdata$aggDateTime <- as.POSIXct(subdata$aggDateTime)


##################################################################
## Making the plot
##################################################################

plot(subdata$Global_active_power~subdata$aggDateTime, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")