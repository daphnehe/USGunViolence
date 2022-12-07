# tab_panel_report

library(shiny)
library("markdown")

tab_panel_report <-tabPanel(


  h5("Report", style = "color: #AFA1CB"),
  includeMarkdown("tabs/report.md")



)

