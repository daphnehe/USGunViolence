#install.packages("ggplot2")
library(ggplot2)
library(tidyverse)
mass_shootings <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-CeceliaKT/main/data/Mass%20Shootings%20Dataset%20Ver%205.csv")
#data2 <- data1[-c(1,2),]
View(mass_shootings)


gender <- mass_shootings %>%
  group_by(Gender) %>%
  summarize(counts = n())
View(gender)
