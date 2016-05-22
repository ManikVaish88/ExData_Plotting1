

source("load_data.R")

plot1 <- function(req_data=NULL) {
  if(is.null(req_data))
    req_data <- load_data()
  
  png("plot1.png", width=480, height=480)
  
  hist(req_data$Global_active_power,
       main="Global Active Power",
       xlab="Global Active Power (kilowatts)",
       col="red")
  
  dev.off()
}


