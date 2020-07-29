setwd("/users/Anna/Documents/GitHub/dsc520")
#For dataframe creation
library(dplyr)
#Import 2018 Florida data as dataframe
florida_2018 <- read.csv("FL_ACSDP1Y2018.DP03_data_with_overlays_2020-07-29T125612.csv")
florida_2018_econ <- select(florida_2018, DP03_0051E, DP03_0051M, DP03_0051PE, 
                            DP03_0051PM,DP03_0062E, DP03_0062M, DP03_0062PE, DP03_0062PM,
                            DP03_0063E, DP03_0063M, DP03_0063PE, DP03_0063PM)
# #Rename columns
# names(florida_2018_econ)[names(florida_2018_econ) == "DP03_0051E"] <- "Total_households"
# names(florida_2018_econ)[names(florida_2018_econ) == "DP03_0051M"] <- "MarginofError_TH"
# names(florida_2018_econ)[names(florida_2018_econ) == "DP03_0051PE"] <- "%estimate_TH"
# names(florida_2018_econ)[names(florida_2018_econ) == "DP03_0051PM"] <- "%MoE_TH"
# names(florida_2018_econ)[names(florida_2018_econ) == "DP03_0062E"] <- "Median_household_income"
# names(florida_2018_econ)[names(florida_2018_econ) == "DP03_0062M"] <- "MarginofError_MedHI"
# names(florida_2018_econ)[names(florida_2018_econ) == "DP03_0062PE"] <- "%Estimate_MedHI"
# names(florida_2018_econ)[names(florida_2018_econ) == "DP03_0062PM"] <- "%MoE_MedHI"
# names(florida_2018_econ)[names(florida_2018_econ) == "DP03_0063E"] <- "Mean_household_income"
# names(florida_2018_econ)[names(florida_2018_econ) == "DP03_0063M"] <- "MarginofError_MeanHI"
# names(florida_2018_econ)[names(florida_2018_econ) == "DP03_0063PE"] <- "%Estimate_MeanHI"
# names(florida_2018_econ)[names(florida_2018_econ) == "DP03_0063PM"] <- "%MoE_MeanHI"

#2017 Florida data
florida_2017 <- read.csv("FL_ACSDP1Y2017.DP03_data_with_overlays_2020-07-29T125612.csv")
florida_2017_econ <- select(florida_2017, DP03_0051E, DP03_0051M, DP03_0051PE, 
                            DP03_0051PM,DP03_0062E, DP03_0062M, DP03_0062PE, DP03_0062PM,
                            DP03_0063E, DP03_0063M, DP03_0063PE, DP03_0063PM)

#2016 Florida data
florida_2016 <- read.csv("FL_ACSDP1Y2016.DP03_data_with_overlays_2020-07-29T125612.csv")
florida_2016_econ <- select(florida_2016, DP03_0051E, DP03_0051M, DP03_0051PE, 
                            DP03_0051PM,DP03_0062E, DP03_0062M, DP03_0062PE, DP03_0062PM,
                            DP03_0063E, DP03_0063M, DP03_0063PE, DP03_0063PM)

#2015 Florida data
florida_2015 <- read.csv("FL_ACSDP1Y2015.DP03_data_with_overlays_2020-07-29T125612.csv")
florida_2015_econ <- select(florida_2015, DP03_0051E, DP03_0051M, DP03_0051PE, 
                            DP03_0051PM,DP03_0062E, DP03_0062M, DP03_0062PE, DP03_0062PM,
                            DP03_0063E, DP03_0063M, DP03_0063PE, DP03_0063PM)

#2015 Florida data
florida_2014 <- read.csv("FL_ACSDP1Y2015.DP03_data_with_overlays_2020-07-29T125612.csv")
florida_2014_econ <- select(florida_2014, DP03_0051E, DP03_0051M, DP03_0051PE, 
                            DP03_0051PM,DP03_0062E, DP03_0062M, DP03_0062PE, DP03_0062PM,
                            DP03_0063E, DP03_0063M, DP03_0063PE, DP03_0063PM)

florida_econ_5yr <- rbind(florida_2014_econ, florida_2015_econ, florida_2016_econ, florida_2017_econ, florida_2018_econ)
