
library(dataRetrieval)
library(tidyverse)
library(ggplot2)


siteNumber <- "11118500" # Ventura River
parameterCd <- "00060"  # Discharge
startDate <- "2020-09-30"
endDate <- "2020-10-07"

# Retrieve the data
discharge <- readNWISdv(siteNumber,
                        parameterCd, startDate, endDate)

# Plot the data
ggplot(discharge, aes(Date, X_00060_00003)) + geom_line()


# Isntantaneous flow
instFlow <- readNWISdata(sites="11118500", service="iv",
                         parameterCd="00060",
                         startDate="2020-09-30T00:00Z",endDate="2020-10-05T12:00Z")

# Plot the data
ggplot(instFlow, aes(dateTime, X_00060_00000)) + geom_line()
