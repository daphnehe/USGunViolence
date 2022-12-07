# tab_panel_report

library(shiny)
library("markdown")

tab_panel_report <-tabPanel(
<<<<<<< HEAD
  h5("Report", style = "color: #AFA1CB"),

  fluidRow(
    column(
      6,
      includeMarkdown("tabs/report.md")
    ),
    column(
      3,
      p("This is a paragraph.")
    ),
    column(
      3,
      p("Rightmost column.")
    )
  )
=======
  "Report",
  includeMarkdown("tabs/report.md")
>>>>>>> 7e5f1645b5add527a7a4c3f7d3f0dd180d4d8e4f


)

