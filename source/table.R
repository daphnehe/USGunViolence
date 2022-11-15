#install.packages("ggplot2")
library(ggplot2)
library(tidyverse)
mass_shootings <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-CeceliaKT/main/data/Mass%20Shootings%20Dataset%20Ver%205.csv")
#data2 <- data1[-c(1,2),]
View(mass_shootings)

# table_plz <- gun_deaths %>% 
#   group_by(year) %>% 
#   filter(!is.na(as.numeric(victim_age)))
  # summarise(avg_victim_age = mean(victim_age, na.rm = TRUE))


#n_weapons <- gun_deaths %>% 
  #group_by(weapon_used) %>% 
  #summarise(counts = n()) %>% 
  #return(n_weapons)
#View(n_weapons)


gender <- mass_shootings %>%
  group_by(Gender) %>%
  summarize(counts = n())
View(gender)


