source("load_data.R")

plot4 <- function(req_data=NULL) {
  if(is.null(req_data))
    req_data <- load_data()
  
  png("plot4.png", width=480, height=480)
  par(mfrow = c(2,2))
  plot(req_data$Time, req_data$Global_active_power,
       type="l",
       xlab="",
       ylab="Global Active Power (kilowatts)")
  plot(req_data$Time, req_data$Voltage,
       type="l",
       xlab="datetime",
       ylab="Voltage")
  plot(req_data$Time, req_data$Sub_metering_1, type="l", col="black",
       xlab="", ylab="Energy sub metering")
  lines(req_data$Time, req_data$Sub_metering_2, col="red")
  lines(req_data$Time, req_data$Sub_metering_3, col="blue")
  legend("topright",
         col=c("black", "red", "blue"),
         c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         lty=1)
  plot(req_data$Time, req_data$Global_reactive_power,
       type="l",
       xlab="datetime",
       ylab="Global_reactive_power")
  
  dev.off()
  
}  