#install.packages("ggplot2")
library(tidyverse)
library(ggplot2)

data1 <- read.csv("https://raw.githubusercontent.com/info201b-au2022/project-CeceliaKT/main/data/all_incidents.csv", head = FALSE, sep = ",")
#View(data1)

data1 <- data1[-c(1,2),]
View(data1)
  
shootings_by_state <- data1 %>%
  group_by(V3) %>%
  count()
colnames(shootings_by_state)[1] = "state"
colnames(shootings_by_state)[2] = "shootings_2013_2022"
View(shootings_by_state)


chart3 <- shootings_by_state %>%
  ggplot(aes(x = state, y = shootings_2013_2022, fill = shootings_2013_2022)) +
  labs(x = "State", y = "Number of Shootings") +
  scale_fill_gradient(low = "gray", high = "purple", name = "Shootings by the 10,000s") +
  geom_col() +
  theme(axis.text.x = element_text(size = 5, angle = 45, hjust = 1))
plot(chart3)

