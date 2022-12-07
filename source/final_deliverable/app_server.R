#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

n_weapons <- data %>% 
  group_by(weapon_used) %>% 
  summarise(counts = n())

server <- function(input, output) {
    # TBD
  output$chart <- renderPlotly({
    p <- ggplot(n_weapons) + 
      geom_col(
        mapping = aes(x = weapon_used, y = counts), color = input$color
      )
  })
}


