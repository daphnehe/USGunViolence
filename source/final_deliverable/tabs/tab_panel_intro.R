# tab_panel_intro

library(shiny)

tab_panel_intro <-tabPanel(
    h5("Introduction", style = "color: #8E7CB3"),
    p("Compared to other developed nations, the United States has much higher gun death rates. To address our concerns regarding gun violence over the years, we analyzed data sets comparing the statistics of gun violence incidents from 1985 to 2018. We have multiple data sets from sources like the Federal Bureau of Investigation (FBI) and Centers for Disease Control and Prevention (CDC) that outline the location of the incident, intention of the incident, number of victims, race/gender/age of the offender, etc., in each incident that is related to gun violence. By comparing variables like gender, age, race, and type of weapon used to find patterns and trends, we help to build an evidence base for lawmakers to take action and address the issue of rising gun violence in the US. 

Handguns have by far been the most commonly used weapon for gun violence. According to the FBI, handguns were involved in over 59% of US murders in 2020, compared to the mere 3% associated with rifles, also referred to as “assault weapons.” There are many ways we can avoid thousands of gun deaths nationwide every year, which we will address in our report and back up with our interactive visualizations. 
")
)
