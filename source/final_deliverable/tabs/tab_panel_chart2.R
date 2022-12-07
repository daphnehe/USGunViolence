# tab_panel_chart2

library(shiny)

year_input <- sliderInput("slider", label = h3("Slider Range"), min = 1985, 
                          max = 2018, value = c(1990, 2000))

tab_panel_chart2 <-tabPanel(
    "Chart 2",
    p("This is chart 2."),
    sidebarLayout(
      sidebarPanel(
        year_input
      ) 
      ,
      
      
      mainPanel(
        h1("Gun deaths over Time"),
        plotlyOutput("chart2"),
        h5("Caption:"),
        p("This chart shows the amount of gun deaths over a span of a certain number of years.")
      )
    )
)
