#install.packages("ggplot2")
library(tidyverse)
library(ggplot2)
data <- read.csv("../data/US_gun_deaths_1985-2018.csv")
#View(data)

n_weapons <- data %>% 
  group_by(weapon_used) %>% 
  summarise(counts = n())
  
chart <- ggplot(data = n_weapons) + 
  geom_col(
    mapping = aes(x = weapon_used, y = counts)
           )
plot(chart)

pie_chart <- ggplot(n_weapons, aes(x = "", y = counts, fill = weapon_used)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0) +
  theme_void()
plot(pie_chart)
