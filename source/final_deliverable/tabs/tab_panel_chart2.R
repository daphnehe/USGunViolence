# tab_panel_chart2

library(shiny)

tab_panel_chart2 <-tabPanel(
    "Chart 2",
    p("This is chart 2."),
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
