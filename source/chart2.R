#install.packages("ggplot2")
library(tidyverse)
library(ggplot2)
data <- read.csv("/Users/daphnehe/Documents/info201/project/project-CeceliaKT/data/US_gun_deaths_1985-2018.csv")
#View(data)

n_weapons <- data %>% 
  group_by(weapon_used) %>% 
  summarise(counts = n())
  
chart <- ggplot(data = n_weapons) + 
  geom_col(
    mapping = aes(x = weapon_used, y = counts)
           )
plot(chart)
