install.packages("ggplot2")
library(ggplot2)
library(tidyverse)
data <- read.csv("../data/Mass Shootings Dataset Ver 5.csv")

View(data)

gender <- data %>%
  group_by(Gender) %>%
  summarise(counts = n())
#View(race_gender)
datadf <- data.frame(data)
#View(datadf)

chart1 <- ggplot(gender) + 
  geom_col(mapping = aes(x = Gender, y = counts))
plot(chart1)

race <- data %>%
  group_by(Race) %>%
  filter(Race == "Black", na.rm = TRUE) %>%
  filter(Race == "White", na.rm = TRUE) %>%
  count()
View(race)


chart2 <- ggplot(race) + 
  geom_col(mapping = aes(x = Race, y = counts ))
plot(chart2)

