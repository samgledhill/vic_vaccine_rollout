
###########################################################
##  Pre-amble:
## 
##  I started this script becuase I was interested in 
##  seeing how accruately I could model the Victorian
##  vaccination rate.  Specifically, as it was used to 
##  map our way out of lockdown.
###########################################################

##  Required libraries

library(tidyverse)
library(rio)
library(janitor)

## First download and import some data

data <- import("https://www.health.gov.au/sites/default/files/documents/2021/10/covid-19-vaccination-vaccination-data-2-october-2021_0.xlsx") %>%
  clean_names()

data %>% separate(measure_name, 
                  into = c("first", "the_rest"), 
                  extra = "merge",
                  sep = "-")
