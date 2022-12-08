library(tidyverse)
library(dplyr)
library(ggplot2)
library(reshape)
library(maps)
library(usmap)
# The functions might be useful for A4
#source("../source/a4-helpers.R")

incarceration_trends <- read.csv("./incarceration_trends.csv")
View(incarceration_trends)

## Test queries ----
#----------------------------------------------------------------------------#
# Simple queries for basic testing
#----------------------------------------------------------------------------#
# Return a simple string
test_query1 <- function() {
  return ("Hello world")
}

# Return a vector of numbers
test_query2 <- function(num=6) {
  v <- seq(1:num)
  return(v)
}

## Section 2  ---- 
#----------------------------------------------------------------------------#

#---------------------------------------------------------------------------------------#
#Variable 1
#---------------------------------------------------------------------------------------#
# data frame summarizes racial and total population by state in total years

pop_comparison <- incarceration_trends %>%
  group_by(state) %>%
  summarize(total_pop_15to64 = sum(total_pop_15to64, na.rm = TRUE), 
   aapi_pop_15to64 = sum(aapi_pop_15to64, na.rm = TRUE),
   black_pop_15to64 = sum(black_pop_15to64, na.rm = TRUE),
   white_pop_15to64 = sum(white_pop_15to64, na.rm = TRUE), 
   latinx_pop_15to64 = sum(latinx_pop_15to64, na.rm = TRUE), 
   native_pop_15to64 = sum(native_pop_15to64, na.rm = TRUE))
View(pop_comparison)


#functions create new data frames for five racial groups, summarizing the proportion
# of that particular race population in each state
aapi_prop_total <- pop_comparison %>%
  group_by(state) %>%
  summarize(aapi_pop_15to64 / total_pop_15to64)
  colnames(aapi_prop_total)[2] = "pop_prop"

black_prop_total <- pop_comparison %>%
  group_by(state) %>%
  summarize(black_pop_15to64 / total_pop_15to64)
  colnames(black_prop_total)[2] = "pop_prop"
  View(black_prop_total)

white_prop_total <- pop_comparison %>%
  group_by(state) %>%
  summarize(white_pop_15to64 / total_pop_15to64)
  colnames(white_prop_total)[2] = "pop_prop"

latinx_prop_total <- pop_comparison %>%
  group_by(state) %>%
  summarize(latinx_pop_15to64 / total_pop_15to64)
  colnames(latinx_prop_total)[2] = "pop_prop"

native_prop_total <- pop_comparison %>%
  group_by(state) %>%
  summarize(native_pop_15to64 / total_pop_15to64)
  colnames(native_prop_total)[2] = "pop_prop"


## data frame summarizes racial and total jail population by state in total years

jail_pop_comparison <- incarceration_trends %>%
  group_by(state) %>%
  summarize(total_jail_pop = sum(total_jail_pop, na.rm = TRUE), 
            aapi_jail_pop = sum(aapi_jail_pop, na.rm = TRUE),
            black_jail_pop = sum(black_jail_pop, na.rm = TRUE),
            white_jail_pop = sum(white_jail_pop, na.rm = TRUE), 
            latinx_jail_pop = sum(latinx_jail_pop, na.rm = TRUE), 
            native_jail_pop = sum(native_jail_pop, na.rm = TRUE))
View(jail_pop_comparison)


#functions create new data frames for five racial groups, summarizing the proportion
# of that particular incarcerated race population in each state
aapi_jail_prop_total <- jail_pop_comparison %>%
  group_by(state) %>%
  summarize(aapi_jail_pop / total_jail_pop)
  aapi_jail_prop_total[is.na(aapi_jail_prop_total)] = 0
  colnames(aapi_jail_prop_total)[2] = "jail_prop"
#View(aapi_jail_prop_total)

black_jail_prop_total <- jail_pop_comparison %>%
  group_by(state) %>%
  summarize(black_jail_pop / total_jail_pop)
  black_jail_prop_total[is.na(black_jail_prop_total)] = 0
  colnames(black_jail_prop_total)[2] = "jail_prop"
View(black_jail_prop_total)

white_jail_prop_total <- jail_pop_comparison %>%
  group_by(state) %>%
  summarize(white_jail_pop / total_jail_pop)
  white_jail_prop_total[is.na(white_jail_prop_total)] = 0
  colnames(white_jail_prop_total)[2] = "jail_prop"

latinx_jail_prop_total <- jail_pop_comparison %>%
  group_by(state) %>%
  summarize(latinx_jail_pop / total_jail_pop)
  latinx_jail_prop_total[is.na(latinx_jail_prop_total)] = 0
  colnames(latinx_jail_prop_total)[2] = "jail_prop"

native_jail_prop_total <- jail_pop_comparison %>%
  group_by(state) %>%
  summarize(native_jail_pop / total_jail_pop)
  native_jail_prop_total[is.na(native_jail_prop_total)] = 0
  colnames(native_jail_prop_total)[2] = "jail_prop"


#New data frames for five races, adding a column of population of race - incarceration of race
#population and incarceration should be similar values, but for many states and groups it isn't
#The closer pop_minus_jail is to one, the more equality there is in incarceration
#Negative numbers means more of a race is incarcerated than there is a population of  

aapi_jailandpop <- left_join(aapi_prop_total, aapi_jail_prop_total, by = "state")
aapi_jailandpop <-  mutate(aapi_jailandpop, pop_minus_jail = pop_prop - jail_prop)
aapi_jailandpop[is.na(aapi_jailandpop)] = 0
View(aapi_jailandpop)

black_jailandpop <- left_join(black_prop_total, black_jail_prop_total, by = "state")
black_jailandpop <-  mutate(black_jailandpop, pop_minus_jail = pop_prop - jail_prop)
black_jailandpop[is.na(black_jailandpop)] = 0
View(black_jailandpop)

white_jailandpop <- left_join(white_prop_total, white_jail_prop_total, by = "state")
white_jailandpop <-  mutate(white_jailandpop, pop_minus_jail = pop_prop - jail_prop)
white_jailandpop[is.na(white_jailandpop)] = 0
View(white_jailandpop)

latinx_jailandpop <- left_join(latinx_prop_total, latinx_jail_prop_total, by = "state")
latinx_jailandpop <-  mutate(latinx_jailandpop, pop_minus_jail = pop_prop - jail_prop)
latinx_jailandpop[is.na(latinx_jailandpop)] = 0
View(latinx_jailandpop)

native_jailandpop <- left_join(native_prop_total, native_jail_prop_total, by = "state")
native_jailandpop <-  mutate(native_jailandpop, pop_minus_jail = pop_prop - jail_prop)
native_jailandpop[is.na(native_jailandpop)] = 0
View(native_jailandpop)


#Average (mean) pop - jail difference in entire U.S. (gain clarity on what race typically
#has the worst value (-))

aapi_difference <- aapi_jailandpop %>%
  summarize(mean(pop_minus_jail))
View(aapi_difference)

black_difference <- black_jailandpop %>%
  summarize(mean(pop_minus_jail))
  View(black_difference)

white_difference <- white_jailandpop %>%
  summarize(mean(pop_minus_jail))
  View(white_difference)

latinx_difference <- latinx_jailandpop %>%
  summarize(mean(pop_minus_jail))
  View(latinx_difference)

native_difference <- native_jailandpop %>%
  summarize(mean(pop_minus_jail))
  View(native_difference)

#---------------------------------------------------------------------------------------#
#Variable 2
#---------------------------------------------------------------------------------------#
#data frame of total population and racial population by county in the US
county_comparison <- incarceration_trends %>%
  group_by(state, county_name) %>%
  summarize(total_pop_15to64 = sum(total_pop_15to64, na.rm = TRUE), 
            aapi_pop_15to64 = sum(aapi_pop_15to64, na.rm = TRUE),
            black_pop_15to64 = sum(black_pop_15to64, na.rm = TRUE),
            white_pop_15to64 = sum(white_pop_15to64, na.rm = TRUE), 
            latinx_pop_15to64 = sum(latinx_pop_15to64, na.rm = TRUE), 
            native_pop_15to64 = sum(native_pop_15to64, na.rm = TRUE))
View(county_comparison)


#data frames calculate population proportion for each of the five racial groups in each county
aapi_county_total <- county_comparison %>%
  group_by(state, county_name) %>%
  summarize(aapi_pop_15to64 / total_pop_15to64)
colnames(aapi_county_total)[3] = "pop_prop"
View(aapi_county_total)

black_county_total <- county_comparison %>%
  group_by(state, county_name) %>%
  summarize(black_pop_15to64 / total_pop_15to64)
colnames(black_county_total)[3] = "pop_prop"
View(black_county_total)

white_county_total <- county_comparison %>%
  group_by(state, county_name) %>%
  summarize(white_pop_15to64 / total_pop_15to64)
colnames(white_county_total)[3] = "pop_prop"
View(white_county_total)

latinx_county_total <- county_comparison %>%
  group_by(state, county_name) %>%
  summarize(latinx_pop_15to64 / total_pop_15to64)
colnames(latinx_county_total)[3] = "pop_prop"
View(latinx_county_total)

native_county_total <- county_comparison %>%
  group_by(state, county_name) %>%
  summarize(native_pop_15to64 / total_pop_15to64)
colnames(native_county_total)[3] = "pop_prop"
View(native_county_total)


#data frame of total jailed population and jailed racial population by county in the US
jail_county_comparison <- incarceration_trends %>%
  group_by(state, county_name) %>%
  summarize(total_jail_pop = sum(total_jail_pop, na.rm = TRUE), 
            aapi_jail_pop = sum(aapi_jail_pop, na.rm = TRUE),
            black_jail_pop = sum(black_jail_pop, na.rm = TRUE),
            white_jail_pop = sum(white_jail_pop, na.rm = TRUE), 
            latinx_jail_pop = sum(latinx_jail_pop, na.rm = TRUE), 
            native_jail_pop = sum(native_jail_pop, na.rm = TRUE))
View(jail_county_comparison)


#data frames calculate incarcerated population proportion for each of the five racial groups in each county
aapi_jail_county_total <- jail_county_comparison %>%
  group_by(state, county_name) %>%
  summarize(aapi_jail_pop / total_jail_pop)
aapi_jail_county_total[is.na(aapi_jail_county_total)] = 0
colnames(aapi_jail_county_total)[3] = "jail_prop"
View(aapi_jail_county_total)

black_jail_county_total <- jail_county_comparison %>%
  group_by(state, county_name) %>%
  summarize(black_jail_pop / total_jail_pop)
black_jail_county_total[is.na(black_jail_county_total)] = 0
colnames(black_jail_county_total)[3] = "jail_prop"
View(black_jail_county_total)

white_jail_county_total <- jail_county_comparison %>%
  group_by(state, county_name) %>%
  summarize(white_jail_pop / total_jail_pop)
white_jail_county_total[is.na(white_jail_county_total)] = 0
colnames(white_jail_county_total)[3] = "jail_prop"
View(white_jail_county_total)

latinx_jail_county_total <- jail_county_comparison %>%
  group_by(state, county_name) %>%
  summarize(latinx_jail_pop / total_jail_pop)
latinx_jail_county_total[is.na(latinx_jail_county_total)] = 0
colnames(latinx_jail_county_total)[3] = "jail_prop"
View(latinx_jail_county_total)

native_jail_county_total <- jail_county_comparison %>%
  group_by(state, county_name) %>%
  summarize(native_jail_pop / total_jail_pop)
native_jail_county_total[is.na(native_jail_county_total)] = 0
colnames(native_jail_county_total)[3] = "jail_prop"
View(native_jail_county_total)


#New data frames for five races, adding a column of population of race - incarceration of race by county
#population and incarceration by county should be similar values, but for many counties, states, and groups it isn't
#The closer pop_minus_jail is to one, the more equality there is in incarceration
#Negative numbers means more of a race is incarcerated than there is a population of 

aapi_county_jailandpop <- full_join(aapi_county_total, aapi_jail_county_total)
aapi_county_jailandpop <-  mutate(aapi_county_jailandpop, pop_minus_jail = pop_prop - jail_prop)
aapi_county_jailandpop[is.na(aapi_county_jailandpop)] = 0
View(aapi_county_jailandpop)

black_county_jailandpop <- full_join(black_county_total, black_jail_county_total)
black_county_jailandpop <-  mutate(black_county_jailandpop, pop_minus_jail = pop_prop - jail_prop)
black_county_jailandpop[is.na(black_county_jailandpop)] = 0
View(black_county_jailandpop)

white_county_jailandpop <- left_join(white_county_total, white_jail_county_total)
white_county_jailandpop <-  mutate(white_county_jailandpop, pop_minus_jail = pop_prop - jail_prop)
white_county_jailandpop[is.na(white_county_jailandpop)] = 0
View(white_county_jailandpop)

latinx_county_jailandpop <- full_join(latinx_county_total, latinx_jail_county_total)
latinx_county_jailandpop <-  mutate(latinx_county_jailandpop, pop_minus_jail = pop_prop - jail_prop)
latinx_county_jailandpop[is.na(latinx_county_jailandpop)] = 0
View(latinx_county_jailandpop)

native_county_jailandpop <- full_join(native_county_total, native_jail_county_total)
native_county_jailandpop <-  mutate(native_county_jailandpop, pop_minus_jail = pop_prop - jail_prop)
native_county_jailandpop[is.na(native_county_jailandpop)] = 0
View(native_county_jailandpop)


#Most negative (highest) difference in pop_minus_jail out of all counties in each state
aapi_county_max <- aapi_county_jailandpop %>%
  group_by(state) %>%
  filter(county_name == county_name, pop_minus_jail == min(pop_minus_jail))
  View(aapi_county_max)

   black_county_max <- black_county_jailandpop %>%
  group_by(state) %>%
  filter(county_name == county_name, pop_minus_jail == min(pop_minus_jail))
  View(black_county_max)

white_county_max <- white_county_jailandpop %>%
  group_by(state) %>%
  filter(county_name == county_name, pop_minus_jail == min(pop_minus_jail))
  View(white_county_max)

latinx_county_max <- latinx_county_jailandpop %>%
  group_by(state) %>%
  filter(county_name == county_name, pop_minus_jail == min(pop_minus_jail))
  View(latinx_county_max)

native_county_max <- native_county_jailandpop %>%
  group_by(state) %>%
  filter(county_name == county_name, pop_minus_jail == min(pop_minus_jail))
  View(native_county_max)


#---------------------------------------------------------------------------------------#
#Variable 3
#---------------------------------------------------------------------------------------#

#Total population in US and total population of white and black people in US by year (1970-2018)
#and total incarceration in US and total incarceration population of white and black people
by_year <- incarceration_trends %>%
  group_by(year) %>%
  summarize(total_pop = sum(total_pop, na.rm = TRUE),
            black_pop_15to64 = sum(black_pop_15to64, na.rm = TRUE),
            white_pop_15to64 = sum(white_pop_15to64, na.rm = TRUE),
            total_jail_pop = sum(total_jail_pop, na.rm = TRUE), 
            black_jail_pop = sum(black_jail_pop, na.rm = TRUE),
            white_jail_pop = sum(white_jail_pop, na.rm = TRUE))
View(by_year)

#data frame summarizes the proportion of the black population and white population from 1970-2018
#and the proportion of black and white incarceration from 1970-2018
year_prop <- by_year %>%
  group_by(year) %>%
  summarize(black_pop_15to64 / total_pop, white_pop_15to64 / total_pop, black_jail_pop / total_jail_pop, white_jail_pop / total_jail_pop)
  year_prop[is.na(year_prop)] = 0
colnames(year_prop)[2] = "black_pop_prop"
colnames(year_prop)[3] = "white_pop_prop"
colnames(year_prop)[4] = "black_jail_prop"
colnames(year_prop)[5] = "white_jail_prop"
View(year_prop)

#data frame adds four columns that calculate the change in population and incarceration population
#by the two races over the course of 49 years
#change in incarceration and total population should increase/decrease steadily
year_prop <- mutate(year_prop, black_pop_prop - lag(black_pop_prop)) %>%
  mutate(year_prop, white_pop_prop - lag(white_pop_prop)) %>%
  mutate(year_prop, black_jail_prop - lag(black_jail_prop)) %>%
  mutate(year_prop, white_jail_prop - lag(white_jail_prop))
  year_prop[is.na(year_prop)] = 0
  colnames(year_prop)[6] = "changein_black_pop_prop"
  colnames(year_prop)[7] = "changein_white_pop_prop"
  colnames(year_prop)[8] = "changein_black_jail_prop"
  colnames(year_prop)[9] = "changein_white_jail_prop"
  #year_prop <- melt(year_prop, id.vars = "year") 
View(year_prop)

#calculates the average change in incarceration and total population by race
#over all the 49 years
#allows for a comparison of the average changes, which should be changing at the same rate 
year_means <- year_prop %>%
  summarize(mean(changein_black_pop_prop), mean(changein_white_pop_prop), mean(changein_black_jail_prop), mean(changein_white_jail_prop))
View(year_means)

#----------------------------------------------------------------------------#

## Section 3  ---- 
#----------------------------------------------------------------------------#
# Growth of the U.S. Prison Population


# This function ... <todo:  update comment>
get_year_jail_pop <- function() {
  prison_pop <- incarceration_trends %>%
    group_by(year) %>%
    summarize(sum(total_jail_pop, na.rm = TRUE))
  colnames(prison_pop)[2] = "Total_Jail_Pop"
  #  View(prison_pop)
  return(prison_pop)
}
get_year_jail_pop <- get_year_jail_pop()
#View(get_year_jail_pop)



# This function ... <todo:  update comment>
plot_jail_pop_for_us <- function()  {
  jail_chart <- get_year_jail_pop %>%
    ggplot(aes(x = year, y = Total_Jail_Pop)) +
    labs(x = "Year", y = "Total Jail Population", title = "Jail Population in US by Year") +
    geom_col() +
    scale_y_continuous(labels = function(x) format(x, scientific = FALSE, big.mark = ","))
  return(jail_chart)   
} 
plot_jail_pop_for_us <- plot_jail_pop_for_us()
#plot(plot_jail_pop_for_us)

#----------------------------------------------------------------------------#


## Section 4  ---- 
#----------------------------------------------------------------------------#
# Growth of Prison Population by State 

states <- c("WA", "OR", "CA")


get_jail_pop_by_states <- function(states) {
  year <- incarceration_trends %>%
    group_by(year) %>%
    summarize()
  
    df <- data.frame(year == year)
  
    for (i in states) {
  df1 <-  incarceration_trends %>%
    group_by(year, state) %>%
      filter(i == state) %>%
      summarize(sum(total_jail_pop, na.rm = TRUE))
      df1 <- df1[-2]
      colnames(df1)[2] = i
   df <- right_join(df, df1, by = "year")
    }
  
  df <- melt(df, id.vars = "year")  
  return(df)
  
}
 get_jail_pop_by_states <- get_jail_pop_by_states(states)
  #View(get_jail_pop_by_states) 
  
  



plot_jail_pop_by_states <- function(states) {
  jail_state_chart <- ggplot(get_jail_pop_by_states, 
    aes(x = year, y = value, color = variable)) +
    labs(x = "Year", y = "Total Jail Population", title = "Jail Population in States by Year") +
      geom_line()
  return(jail_state_chart)   
} 
plot_jail_pop_by_states <- plot_jail_pop_by_states(states)
#plot(plot_jail_pop_by_states)
  






#----------------------------------------------------------------------------#

## Section 5  ---- 
#----------------------------------------------------------------------------#
# Population Growth vs. Incarceration Growth of black people by year

pop_vs_jail <- function() {
 popdf <- incarceration_trends %>%
  group_by(year) %>%
  summarize(sum(total_pop_15to64, na.rm = TRUE), sum(black_pop_15to64, na.rm = TRUE), sum(total_jail_pop, na.rm = TRUE), sum(black_jail_pop, na.rm = TRUE))
  colnames(popdf)[2] = "pop_by_year"
  colnames(popdf)[3] = "blackpop_by_year"
  colnames(popdf)[4] = "jail_by_year"
  colnames(popdf)[5] = "blackjail_by_year"
  return(popdf)
}
pop_vs_jail <- pop_vs_jail()
#View(pop_vs_jail)

pop_vs_jail_prop <- function() {
  prop <- pop_vs_jail %>%
  group_by(year) %>%
  summarize(blackpop_by_year / pop_by_year, blackjail_by_year / jail_by_year)
  colnames(prop)[2] = "pop_prop"
  colnames(prop)[3] = "jail_prop"
  return(prop)
}
pop_vs_jail_prop <- pop_vs_jail_prop()
View(pop_vs_jail_prop)


popjail_plot <- function() {
  pop_plot <- ggplot(pop_vs_jail_prop, aes(x = year)) +
    geom_line(aes(y = pop_prop), color = "red") +
    geom_line(aes(y = jail_prop), color = "blue") +
    labs(x = "Year", y = "Proportion of Black Population", title = "Comparison of Black Pop Growth vs. Black Jail Growth")
  return(pop_plot)
}
popjail_plot <- popjail_plot()
plot(popjail_plot)


#----------------------------------------------------------------------------#

## Section 6  ---- 
#----------------------------------------------------------------------------#
# <a map shows potential patterns of inequality that vary geographically>
black_prop_total2 <- pop_comparison %>%
  group_by(state) %>%
  summarize(black_pop_15to64 / total_pop_15to64)
colnames(black_prop_total2)[2] = "pop_prop2"
View(black_prop_total2)

black_jail_prop_total2 <- jail_pop_comparison %>%
  group_by(state) %>%
  summarize(black_jail_pop / total_jail_pop)
black_jail_prop_total2[is.na(black_jail_prop_total2)] = 0
colnames(black_jail_prop_total2)[2] = "jail_prop2"
View(black_jail_prop_total2)

black_jailandpop <- black_prop_total2 %>%
  group_by(state) %>%
  summarize(pop_prop2)
View(black_jailandpop)

black_jailandpop <- left_join(black_jailandpop, black_jail_prop_total2, by = "state")
View(black_jailandpop)

black_jailandpop <- mutate(black_jailandpop, pop_minus_jail = pop_prop2 - jail_prop2)
black_jailandpop <- black_jailandpop %>%
  select(state, pop_minus_jail)
View(black_jailandpop)


map_plot <- plot_usmap(data = black_jailandpop, values = "pop_minus_jail", color = "red") + 
  scale_fill_continuous(
    low = "red", high = "white", name = "Black Pop vs. Incarceration Prop.", label = scales::comma
  ) + theme(legend.position = "right")
plot(map_plot)



#----------------------------------------------------------------------------#

## Load data frame ---- 


