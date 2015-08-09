##################################################################
## Intro : load Data & convert dates & factor to numeric & subset
##################################################################

hcp <- read.csv("~/R/Coursera/Exploratory_data_analysis/Data/household_power_consumption.txt", sep=";")
hcp$Date <- as.Date(hcp$Date, format = "%d/%m/%Y")
subdata <- subset(hcp, Date >= "2007-02-01" & Date <= "2007-02-02" )
subdata$Global_active_power <- as.numeric(subdata$Global_active_power)


##################################################################
## Making the plot
##################################################################

hist(subdata$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")