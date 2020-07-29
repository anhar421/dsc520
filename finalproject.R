setwd("/users/Anna/Documents/GitHub/dsc520")
#For dataframe creation and manipulation
library(dplyr)

#Import 2018 Florida data as dataframe
fl_2018 <- read.csv("FL_ACSDP1Y2018.DP03_data_with_overlays_2020-07-29T125612.csv")
fl_2018_econ <- select(fl_2018, DP03_0051E, DP03_0051M,
                            DP03_0062E, DP03_0062M, DP03_0063E, DP03_0063M)

#2017 Florida data
fl_2017 <- read.csv("FL_ACSDP1Y2017.DP03_data_with_overlays_2020-07-29T125612.csv")
fl_2017_econ <- select(fl_2017, DP03_0051E, DP03_0051M,
                            DP03_0062E, DP03_0062M, DP03_0063E, DP03_0063M)

#2016 Florida data
fl_2016 <- read.csv("FL_ACSDP1Y2016.DP03_data_with_overlays_2020-07-29T125612.csv")
fl_2016_econ <- select(fl_2016, DP03_0051E, DP03_0051M,
                            DP03_0062E, DP03_0062M, DP03_0063E, DP03_0063M)

#2015 Florida data
fl_2015 <- read.csv("FL_ACSDP1Y2015.DP03_data_with_overlays_2020-07-29T125612.csv")
fl_2015_econ <- select(fl_2015, DP03_0051E, DP03_0051M,
                            DP03_0062E, DP03_0062M, DP03_0063E, DP03_0063M)

#2015 Florida data
fl_2014 <- read.csv("FL_ACSDP1Y2014.DP03_data_with_overlays_2020-07-29T125612.csv")
fl_2014_econ <- select(fl_2014, DP03_0051E, DP03_0051M,
                            DP03_0062E, DP03_0062M, DP03_0063E, DP03_0063M)

fl_econ_5yr <- rbind(fl_2014_econ, fl_2015_econ, fl_2016_econ, 
                          fl_2017_econ, fl_2018_econ)

#Rename columns
colnames(fl_econ_5yr) <- c("Total_households","MarginofError_TH", "Median_household_income",
                           "MarginofError_MedHI", "Mean_household_income", "MarginofError_MeanHI")

#Remove unneccesary metadata
fl_econ_5yr <- fl_econ_5yr[-c(1, 3, 5, 7, 9), ]
fl_econ_5yr$year <- c("2014", "2015", "2016", "2017", "2018")
fl_econ_5yr <- fl_econ_5yr[,c("year", "Total_households","MarginofError_TH", "Median_household_income",
                              "MarginofError_MedHI", "Mean_household_income", "MarginofError_MeanHI")]

#2018 New York data
ny_2018 <- read.csv("NY_ACSDP1Y2018.DP03_data_with_overlays_2020-07-29T142230.csv")
ny_2018_econ <- select(ny_2018, DP03_0051E, DP03_0051M,
                       DP03_0062E, DP03_0062M, DP03_0063E, DP03_0063M)

#2017 New York data
ny_2017 <- read.csv("NY_ACSDP1Y2017.DP03_data_with_overlays_2020-07-29T142230.csv")
ny_2017_econ <- select(ny_2017, DP03_0051E, DP03_0051M,
                       DP03_0062E, DP03_0062M, DP03_0063E, DP03_0063M)

#2016 New York data
ny_2016 <- read.csv("NY_ACSDP1Y2016.DP03_data_with_overlays_2020-07-29T142230.csv")
ny_2016_econ <- select(ny_2016, DP03_0051E, DP03_0051M,
                       DP03_0062E, DP03_0062M, DP03_0063E, DP03_0063M)

#2015 New York data
ny_2015 <- read.csv("NY_ACSDP1Y2015.DP03_data_with_overlays_2020-07-29T142230.csv")
ny_2015_econ <- select(ny_2015, DP03_0051E, DP03_0051M,
                       DP03_0062E, DP03_0062M, DP03_0063E, DP03_0063M)

#2014 New York data
ny_2014 <- read.csv("NY_ACSDP1Y2014.DP03_data_with_overlays_2020-07-29T142230.csv")
ny_2014_econ <- select(ny_2014, DP03_0051E, DP03_0051M,
                       DP03_0062E, DP03_0062M, DP03_0063E, DP03_0063M)

ny_econ_5yr <- rbind(ny_2014_econ, ny_2015_econ, ny_2016_econ, 
                     ny_2017_econ, ny_2018_econ)

#Rename columns
colnames(ny_econ_5yr) <- c("Total_households","MarginofError_TH", "Median_household_income",
                           "MarginofError_MedHI", "Mean_household_income", "MarginofError_MeanHI")

#Remove unneccesary metadata
ny_econ_5yr <- ny_econ_5yr[-c(1, 3, 5, 7, 9), ]
ny_econ_5yr$year <- c("2014", "2015", "2016", "2017", "2018")
ny_econ_5yr <- ny_econ_5yr[,c("year", "Total_households","MarginofError_TH", "Median_household_income",
                              "MarginofError_MedHI", "Mean_household_income", "MarginofError_MeanHI")]

#HOUSEHOLD DATA
#Florida
flhh_2018 <- read.csv("Household data/FL_ACSST1Y2018.S1101_data_with_overlays_2020-07-29T145348.csv")
flhh_2018_smol <- select(flhh_2018, S1101_C01_001E, S1101_C01_001M, S1101_C01_002E, S1101_C01_002M)

flhh_2017 <- read.csv("Household data/FL_ACSST1Y2017.S1101_data_with_overlays_2020-07-29T145348.csv")
flhh_2017_smol <- select(flhh_2017, S1101_C01_001E, S1101_C01_001M, S1101_C01_002E, S1101_C01_002M)

flhh_2016 <- read.csv("Household data/FL_ACSST1Y2016.S1101_data_with_overlays_2020-07-29T145348.csv")
flhh_2016_smol <- select(flhh_2016, S1101_C01_001E, S1101_C01_001M, S1101_C01_002E, S1101_C01_002M)

flhh_2015 <- read.csv("Household data/FL_ACSST1Y2015.S1101_data_with_overlays_2020-07-29T145348.csv")
flhh_2015_smol <- select(flhh_2015, S1101_C01_001E, S1101_C01_001M, S1101_C01_002E, S1101_C01_002M)

flhh_2014 <- read.csv("Household data/FL_ACSST1Y2014.S1101_data_with_overlays_2020-07-29T145348.csv")
flhh_2014_smol <- select(flhh_2014, S1101_C01_001E, S1101_C01_001M, S1101_C01_002E, S1101_C01_002M)

fl_hh_5yr <- rbind(flhh_2014_smol, flhh_2015_smol, flhh_2016_smol, 
                   flhh_2017_smol, flhh_2018_smol)

colnames(fl_hh_5yr) <- c("Total_households","MarginofError_TH", "Avg_household_size",
                           "MarginofError_AvgHHsz")

fl_hh_5yr <- fl_hh_5yr[-c(1, 3, 5, 7, 9), ]
fl_hh_5yr$year <- c("2014", "2015", "2016", "2017", "2018")
fl_hh_5yr <- fl_hh_5yr[,c("year", "Total_households","MarginofError_TH", "Avg_household_size",
                          "MarginofError_AvgHHsz")]

#New York
nyhh_2018 <- read.csv("Household data/NY_ACSST1Y2018.S1101_data_with_overlays_2020-07-29T151028.csv")
nyhh_2018_smol <- select(nyhh_2018, S1101_C01_001E, S1101_C01_001M, S1101_C01_002E, S1101_C01_002M)

nyhh_2017 <- read.csv("Household data/NY_ACSST1Y2017.S1101_data_with_overlays_2020-07-29T151028.csv")
nyhh_2017_smol <- select(nyhh_2017, S1101_C01_001E, S1101_C01_001M, S1101_C01_002E, S1101_C01_002M)

nyhh_2016 <- read.csv("Household data/NY_ACSST1Y2016.S1101_data_with_overlays_2020-07-29T151028.csv")
nyhh_2016_smol <- select(nyhh_2016, S1101_C01_001E, S1101_C01_001M, S1101_C01_002E, S1101_C01_002M)

nyhh_2015 <- read.csv("Household data/NY_ACSST1Y2015.S1101_data_with_overlays_2020-07-29T151028.csv")
nyhh_2015_smol <- select(nyhh_2015, S1101_C01_001E, S1101_C01_001M, S1101_C01_002E, S1101_C01_002M)

nyhh_2014 <- read.csv("Household data/NY_ACSST1Y2014.S1101_data_with_overlays_2020-07-29T151028.csv")
nyhh_2014_smol <- select(nyhh_2014, S1101_C01_001E, S1101_C01_001M, S1101_C01_002E, S1101_C01_002M)

ny_hh_5yr <- rbind(nyhh_2014_smol, nyhh_2015_smol, nyhh_2016_smol, 
                   nyhh_2017_smol, nyhh_2018_smol)

colnames(ny_hh_5yr) <- c("Total_households","MarginofError_TH", "Avg_household_size",
                         "MarginofError_AvgHHsz")

ny_hh_5yr <- ny_hh_5yr[-c(1, 3, 5, 7, 9), ]
ny_hh_5yr$year <- c("2014", "2015", "2016", "2017", "2018")
ny_hh_5yr <- ny_hh_5yr[,c("year", "Total_households","MarginofError_TH", "Avg_household_size",
                          "MarginofError_AvgHHsz")]

#OCCUPATION INFORMATION
fl_occ_2018 <- select(fl_2018, DP03_0026E, DP03_0026M, DP03_0027E, DP03_0027M, DP03_0028E, DP03_0028M,
                      DP03_0029E, DP03_0029,
