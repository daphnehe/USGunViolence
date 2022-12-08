# tab_panel_summary

library(shiny)

tab_panel_summary <-tabPanel(
    h5("Summary", style = "color: #90BBCE"),
    p("In our findings, we found that states with higher gun control, such as 
      California, generally had lower gun deaths per capita as compared to 
      states with lower rates of gun control, such as Kansas. We also found 
      that handguns have the highest rate of usage in gun violence crimes, 
      which implicates that restrictions should be applied to all kinds of 
      weapons, not just a select few. Finally, we also found that Black people 
      are more likely to be killed by guns. Black people make up only 13% of the 
      US population, but make up over half of gun deaths in the US. This shows 
      how society has failed to protect Black communities from gun violence,
      and there needs to be a change.")
)

