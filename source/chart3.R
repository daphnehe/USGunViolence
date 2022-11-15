#install.packages("ggplot2")
library(tidyverse)
library(ggplot2)

data <- read.csv("../data/all_incidents.csv")
#View(data)


shootings_by_state <- data %>%
  group_by(state) %>%
  count()
colnames(shootings_by_state)[2] = "shootings_2013_2022"
#View(shootings_by_state)


chart3 <- shootings_by_state %>%
  ggplot(aes(x = state, y = shootings_2013_2022, fill = shootings_2013_2022)) +
  scale_fill_gradient(low = "gray", high = "purple") +
  geom_col() +
  theme(axis.text.x = element_text(size = 5, angle = 45, hjust = 1))
plot(chart3)

