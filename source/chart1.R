install.packages("ggplot2")
library(ggplot2)
library(tidyverse)
data <- read.csv("C:/Users/steph/Documents/info201/project-CeceliaKT/data/Mass Shootings Dataset Ver 5.csv")

View(data)

race_gender <- datadf %>%
  group_by(Gender) %>%
  summarise(counts = n())
View(race_gender)
datadf <- data.frame(data)
View(datadf)

chart <- ggplot(race_gender) + 
  geom_col(mapping = aes(x = Gender, y = counts))
plot(chart)

