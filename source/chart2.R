#install.packages("ggplot2")
library(tidyverse)
library(ggplot2)
data <- read.csv("../data/US_gun_deaths_1985-2018.csv")
source("app_server.R")
View(data)
#data1 <- read.csv("../data/all_incidents.csv", head = FALSE, sep = ",")
#View(data1)

n_weapons <- data %>% 
  group_by(weapon_used) %>% 
  summarise(counts = n())

  
bar_chart <- ggplot(data = n_weapons) + 
  geom_col(
    mapping = aes(x = weapon_used, y = counts)
           )
plot(bar_chart)

pie_chart <- ggplot(n_weapons, aes(x = "", y = counts, fill = weapon_used)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0) +
  theme_void()
plot(pie_chart)

gun_deaths_per_year <- data %>%
  group_by(year) %>%
  summarise(gun_deaths = n())

line_chart <- ggplot(gun_deaths_per_year, aes(x = year, y = gun_deaths)) +
  geom_line()
plot(line_chart)

