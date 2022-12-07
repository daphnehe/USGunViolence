#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
library(tidyverse)
library(dplyr)
library(shiny)
library(plotly)

data <- read.csv("../../data/US_gun_deaths_1985-2018.csv")

n_weapons <- data %>% 
   group_by(weapon_used) %>% 
   summarise(counts = n())

server <- shinyServer(
  function(input, output) {
    # TBD
  output$chart <- renderPlotly({
    p <- ggplot(n_weapons) + 
      geom_col(
        mapping = aes(x = weapon_used, y = counts), color = input$color
      )
  })
  
  output$chart2 <- renderPlotly({
    
    gun_deaths_per_year <- data %>%
      group_by(year) %>%
      summarise(gun_deaths = n())%>%
      filter(year > input$slider[1], year < input$slider[2])
    
    p <- plot_ly(
      data = gun_deaths_per_year,
      x = ~year,
      y = ~gun_deaths,
      type = "scatter",
      mode = "lines"
    ) %>%
      layout(title = "Gun deaths over Time",
             xaxis = list(title = "Year"),
             yaxis = list(title = "Gun deaths")
      )
    return(p)
  })
})

