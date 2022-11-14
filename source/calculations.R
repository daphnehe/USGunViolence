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

male_offenders_count <- function(){
  male_count <- us_gun_deaths %>% 
    filter(offender_sex == "Male") %>% 
    summarise (male_count = n()) %>% 
    pull(male_count)
  return(male_count/260279)
}
male_offenders_count()

female_offenders_count <- function(){
  female_count <- us_gun_deaths %>% 
    filter(offender_sex == "Female") %>% 
    summarise (female_count = n()) %>% 
    pull(female_count)
  return(female_count/260279)
}
female_offenders_count()

black_victim_count <- function(){
  black_count <- us_gun_deaths %>% 
    filter(victim_race == "Black") %>% 
    summarise (black_count = n()) %>% 
    pull(black_count)
  return(black_count/386235)
}
black_victim_count()

handgun_used_count <- function(){
  handgun_count <- us_gun_deaths %>% 
    filter(weapon_used == "handgun") %>% 
    summarise (handgun_count = n()) %>% 
    pull(handgun_count)
  return(handgun_count/387004)
}
handgun_used_count()


