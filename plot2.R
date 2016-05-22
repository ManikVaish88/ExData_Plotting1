source("load_data.R")

plot2 <- function(req_data=NULL) {
  if(is.null(req_data))
    req_data <- load_data()
  
  png("plot2.png", width=480, height=480)
  
  plot(req_data$Time, req_data$Global_active_power,
       type="l",
       xlab="",
       ylab="Global Active Power (kilowatts)")
  
  dev.off()
}

