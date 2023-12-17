# Get the current datetime
date_time <- format(Sys.time(), digits = 0) 
# Check if "increment_one.rds" exists
if(file.exists("/home/rstudio/scheduling/scheduled_script.rds")){
  # If "increment_one.rds exists then we read it into memory
  scheduled_script <- readRDS(file = "/home/rstudio/scheduling/scheduled_script.rds")
  # We add one to the R object
  scheduled_script <- scheduled_script + 1
  # The R object is saved to the disk
  saveRDS(scheduled_script, file = "/home/rstudio/scheduling/scheduled_script.rds")  
  # We print the datetime and the value of increment_one.
  # This will be captured by the cronR logger and written to the .log file
  print(paste0( ": Process completed at ", date_time, scheduled_script))
}else{
  # If "increment_one.rds" does not exist we begin by 1
  scheduled_script <- 1
  # The R object is saved to the disk
  saveRDS(scheduled_script, file = "/home/rstudio/scheduling/scheduled_script.rds")  
  # We print the datetime and the value of increment_one.
  # This will be captured by the cronR logger and written to the .log file
  print(paste0(": Process completed at ", date_time, scheduled_script))
}










