# tab_panel_chart1

library(shiny)
library(plotly)

tab_panel_chart1 <-tabPanel(
    h5("Chart 1", style = "color: #70AFB7"),
    p("This is chart 1."),
    sidebarLayout(
      sidebarPanel(
        
        selectInput("color", label = h3("Select color"), 
                    choices = list("red", "blue", "green"), 
                    selected = "red"),
     
      ),
      
      
      mainPanel(
        h1("Amount of a certain weapon used"),
        plotlyOutput("chart"),
        h5("Caption:"),
        p("This chart shows the amount of different types of weapons used during gun violence crimes.")
      )
    )
)

