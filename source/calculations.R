library(tidyverse)
us_gun_deaths <- read.csv("../data/US_gun_deaths_1985-2018.csv")
victims_less_than_one <- function(){
  count <- us_gun_deaths %>% 
    filter(victim_age == "Less than one year old") %>% 
    summarise (count = n()) %>% 
    pull(count)
  return(count)
}
victims_less_than_one()

male_offenders_percentage <- function(){
  male_count <- us_gun_deaths %>% 
    filter(offender_sex == "Male") %>% 
    summarise (male_count = n()) %>% 
    pull(male_count)
  return(round(male_count/260279*100, 0))
}
male_offenders_percentage()

female_offenders_percentage <- function(){
  female_count <- us_gun_deaths %>% 
    filter(offender_sex == "Female") %>% 
    summarise (female_count = n()) %>% 
    pull(female_count)
  return(round(female_count/260279*100, 0))
}
female_offenders_percentage()

black_victim_percentage <- function(){
  black_count <- us_gun_deaths %>% 
    filter(victim_race == "Black") %>% 
    summarise (black_count = n()) %>% 
    pull(black_count)
  return(round(black_count/386235*100, 0))
}
black_victim_percentage()

handgun_used_percentage <- function(){
  handgun_count <- us_gun_deaths %>% 
    filter(weapon_used == "handgun") %>% 
    summarise (handgun_count = n()) %>% 
    pull(handgun_count)
  return(round(handgun_count/387004*100, 0))
}
handgun_used_percentage()


