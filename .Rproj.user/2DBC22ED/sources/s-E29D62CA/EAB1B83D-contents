library(dplyr)
library(rmarkdown)

source('plot1.R')
source('plot2.R')
source('plot3.R')
source('plot4.R') ##

#
# Step 1: Get the dataset 
household_pow_data <- read.table("./household_power_consumption/household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?", colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric') )
str(household_pow_data)

## Format date to Type Date
household_pow_data$Date <- as.Date(household_pow_data$Date, "%d/%m/%Y")

## Filter data set from Feb. 1, 2007 to Feb. 2, 2007
household_pow_data <- subset(household_pow_data, Date >= as.Date("2007-2-1") & Date <= as.Date("2007-2-2"))

## Remove incomplete observation
household_pow_data <- household_pow_data[complete.cases(household_pow_data),]

## Combine Date and Time column
dateTime <- paste(household_pow_data$Date, household_pow_data$Time)

## Name the vector
dateTime <- setNames(dateTime, "DateTime")

## Remove Date and Time column
household_pow_data <- household_pow_data[ ,!(names(household_pow_data) %in% c("Date","Time"))]

## Add DateTime column
household_pow_data <- cbind(dateTime, household_pow_data)

## Format dateTime Column
household_pow_data$dateTime <- as.POSIXct(dateTime)

View(household_pow_data)

#call the plot functions

plot1_func(household_pow_data)
plot2_func(household_pow_data)
plot3_func(household_pow_data)
plot4_func(household_pow_data)
