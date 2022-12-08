library(plotly)
library(stringr)

### Build Scatter ###
build_scatter <- function(data, search = "", xvar = "n", yvar = "n_killed") {
  
  # Get x and y max
  xmax <- max(data7[,xvar]) * 1
  ymax <- max(data7[,yvar]) * 1
  
  # Filter data based on search 
  data7 <- data %>% 
    filter(grepl(search, state))
  
  # Plot data
  p <- plot_ly(data = data7,
               x = ~n,
               y = ~n_killed,
               type = "scatter",
               mode="markers", 
               marker = list(
                 opacity = .4, 
                 size = 10
               )) %>% 
    layout(xaxis = list(range = c(0, xmax), title = "Number of Shootings from 2013-2022"), 
           yaxis = list(range = c(0, ymax), title = "Total Deaths")
    )
  return(p)
}