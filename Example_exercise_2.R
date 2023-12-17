library(cronR)
# First cronR job -------------
cmd <- cron_rscript(rscript = "scheduled_script.R")
cron_add(cmd, frequency = 'minutely', id = 'job1', description = 'Scheduling exercise', days_of_month = c(6))
cron_ls()

cron_clear()
cron_ls()
