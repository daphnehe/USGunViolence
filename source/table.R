#install.packages("ggplot2")
library(ggplot2)
library(tidyverse)
gun_deaths <- read.csv("../data/US_gun_deaths_1985-2018.csv")
#data2 <- data1[-c(1,2),]
#View(data2)

table_plz <- gun_deaths %>% 
  group_by(year) %>% 
  filter(!is.na(as.numeric(victim_age)))
  # summarise(avg_victim_age = mean(victim_age, na.rm = TRUE))