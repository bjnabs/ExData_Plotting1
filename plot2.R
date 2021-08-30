

plot2_func <- function(pow_data){
        ## Create Plot 2
        plot(pow_data$Global_active_power~pow_data$dateTime, type="l", ylab="Global Active Power (kilowatts)", xlab="")
        
}
