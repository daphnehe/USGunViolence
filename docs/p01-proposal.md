# Bulletproof Futures

**Code Name**: Titanium

**Authors**: Daphne He (daphnehe@uw.edu), Cecelia Thomas (ceceliat@uw.edu), Stephanie Liu (sliu39@uw.edu)

**Affiliation**:  INFO-201: Technical Foundations of Informatics - The Information School - University of Washington

**Date**: Autumn 2022

## Abstract

We are concerned with gun violence because of the mass shootings that happen frequently throughout the country. To address this concern, we plan to look for any trends in data sets, such as which race, gender, education level, or age is more likely to commit gun violence, and how these trends compare with trends of the past. We will also be comparing incidences of mass shootings versus other incidences of gun violence, examining how often they occur, where, and the number of people injured or killed.

**Keywords**: gun control, mass shootings, violence, regulation, race, guns, policy

## Introduction
In this project, we will be examining trends in data sets related to gun violence. We have multiple data sets that outline the location of the incident, intention of the incident, number of victims, race/gender/age of the offender, etc. in each incident that is related to gun violence. More recent data sets will be compared to less recent data sets to see if there have been any changes in these trends over time. In addition, we will also be looking at data sets that cover mass shootings across the U.S., and compare trends from those data sets to trends that we discover from the data sets relating to gun violence. Specifically, the data being compared will relate to how frequently these incidents occur, where they occur, along with the number of people injured or killed.

## Problem Domain

### Project Framing
The US has always taken pride in the Second Amendment of the US Constitution, which gives people the right to bear arms. The prevalence of gun culture in the US has fueled the growth of incidents involving gun violence. Among these gun violence incidents are mass shootings, which, according to the nonprofit Everytown for Gun Safety, consist of “any incident in which four or more people are shot and killed, excluding the shooter." In our project, we will compare trends between race, gender, education level, age, and their impact on gun violence in the US. We will examine whether a particular demographic is more likely to commit gun violence and where shootings most commonly occur. There is a need to reform gun regulations in the U.S. to address the rate of mass shootings and other gun violence incidents.

### Human Values
Inherent human values connected to our problem domain are love, peace, and non-violence. These values originate from human empathy and care for loved ones, since we all want to keep ourselves, family, and friends safe from harm. There is also the value of peace and respect for everyone else around you to ensure the community lives in harmony. The value of non-violence originates from the drive to protect and prevent innocents from dying from acts of violence, including shootings. The fight against the Second Amendment of the US Constitution is a long and arduous process due to the conflicting values of the American people. Some believe it is essential to bear arms as an act of defense against potential perpetrators and the government. Others believe abolishing the Second Amendment will put an end to gun violence in the US. We will look into what laws or policies should be implemented to reduce incidences of gun violence by comparing laws from different states and locations based on their frequency of gun violence incidents.

### Direct and Indirect Stakeholders
Direct stakeholders include people who own guns and the politicians who represent the voice of citizens who want more gun control. Gun owners value the protection provided by their guns and are motivated to keep possession of them. On the other hand, people who fear guns value non-violence and peace and want guns to be illegal. Direct stakeholders also include anyone involved in the selling or trading of guns. Indirect stakeholders are everyone in the US because the policies and laws that affect gun control affect everyone’s safety and awareness.

### Possible Harms and Benefits
Some harms with the intervention of data and technology are prejudices. If trends in the data showed that a particular demographic is more likely to commit gun violence crimes, there may be a generalization of the whole demographic to be dangerous or violent. The unanticipated consequence is that innocent people of that demographic would be harmed. The benefits of this research project is that we would have a better understanding of the trends of gun violence incidents.

## Research Questions
- How does gun violence in the United States compare to gun violence in other developed countries, and are there any laws that explain why gun violence might differ?

- Is there a particular race or gender that is more likely to commit gun violence? Does race or gender depend on the type of gun violence such as mass shootings, domestic violence,
or suicide?

- Is there a category of gun violence that is most common in the United States and where does this occur? Does this affect people’s perception of gun violence in the U.S. and are the majority of people aware that this is the most common type of gun violence?

- How do gun violence trends from the past, such as a decade ago, compare to gun violence today? Have mass shootings, accidental gun deaths, drug and crime related shootings, or hate crime shootings increased?

## The Dataset
| Data file | # of Observations | # of Variables  | Citation  |
|:----------|:------------------|:---------------|:-----------|
|all_incidents  | 472,821 | 7 | Werr, E. F. (2022, May 29). Gun violence incidents in the United States. Kaggle. Retrieved October 30, 2022, from https://www.kaggle.com/datasets/emmanuelfwerr/gun-violence-incidents-in-the-usa?resource=download |
|full_data (gun deaths in america)  | 100,798 | 11 | Zelenak, A. (2018, March 20). Gun deaths in America - dataset by Azel. data.world. Retrieved October 30, 2022, from https://data.world/azel/gun-deaths-in-america |
| Mass Shootings Dataset Ver 2 | 319 | 12 | kanncaa1. (2018, June 22). Why gun violence increase in Texas. Retrieved October 30, 2022, from https://www.kaggle.com/code/kanncaa1/why-gun-violance-increase-in-texas/data |


**All_incidents data set**:
This dataset contains gun violence incidents, including mass shootings, from 2013 to 2022. Included in the data set are dates, the state, the city, the address, the number of people injured, and the number of deaths. Utilizing this data set will allow us to answer key research questions such as where shootings occur most, as well as observe trends and differences in the number of shootings over the past decade. Emanuel F. Werr collected gun violence data from the Gun Violence Archive and formatted it into a simple and readable dataset. This dataset is updated almost weekly and is meant to bring awareness to the magnitude of gun violence issues in America. The data used in this dataset is from the GVA which is a nonprofit organization meant to provide accurate information about gun violence in the United States. Pro-gun organizations as well as anti-gun organizations can use this data to prove any point that fits their narrative by including and excluding select information. The GVA data is collected by examining sources daily and verifying them by researchers and other processes. The data is also unbiased, as the GVA is not affiliated with any other organizations. This gun violence dataset in particular was found through Kaggle, and the GVA will be credited as well.

**Gun Deaths (full_data) data set**:
This data set contains the amount of gun deaths that resulted from certain incidents of gun violence across the U.S.. It covers the date the incident occured, the intention of each incident, the gender/race/age of the victims, location of the incident, and number of deaths total in each incident. This data set was created by Alex Zelenak, who gathered data from the CDC’s “multiple cause of death” datafile, and the CDC’s data from 2012-2014 on gun-related deaths. Zelenak also gathered data from the FBI’s “Supplementary Homicide Reports”. The data is credible and unbiased as it comes from federal agencies, meaning that the data is purely factual and not opinionated. This data set was found through the Google data set searching tool, and the CDC and FBI will be credited as well.

**Mass Shootings data set**:
This data set provides information on mass shootings between the year 1966 and 2017. Attributes include title of mass shooting, location, date, total number of victims, whether it was a mental health issue, and the race of the perpetrator. This data will allow us to track down where mass shootings occur the most frequently in the US and the severity of mass shootings in different states or cities. We would then be able to examine policies or laws in the areas where most mass shootings occur and recommend our own policies to reduce the frequencies of mass shootings. We will also be able to observe trends, like how large of a role mental health is in mass shooting incidents. The data was collected by Datai team based in Turkey from sources like Wikipedia, USA Today, Mother Jones, and Stanford in 2017 in order to use machine learning to understand trends in mass shootings incidents. The data collection effort was not funded and this data is most useful to people researching to implement new policies against mass shootings and gun violence. This data is trustworthy because Datai is a Notebooks Grandmaster on Kaggle, which is the highest tier. I found the data from Kaggle and credit the source of the data due to Datai, USA Today, Wikipedia, Mother Jones, and Stanford’s good reputation.

## Expected Implications
(incomplete)

## Limitations
Some limitations that our group may have to face while gathering our data sets is that some of the data may be outdated, even if that data is considered to be our more recent data. A few of the data sets that we have found from our research have not been updated for a few years, which leaves the validity and relevancy of our data up in the air. Furthermore, there may be some human errors, such as typos, in our data sets. The data sets we found could also be missing other important data, leaving large gaps that could make it difficult to fully comprehend the data. As a result, any trends that we find could be a result of over or underestimation due to any gaps within the data sets.

## References
- Smith, Melissa E., et al. “The Impact of Exposure to Gun Violence Fatality on  Mental Health Outcomes in Four Urban U.S. Settings.” Social Science & Medicine, vol. 246, Feb. 2020, p. 112587, 10.1016/j.socscimed.2019.112587.
- Wamser-Nanney, R. (2021). Understanding gun violence: Factors associated with beliefs regarding guns, gun policies, and gun violence.Psychology of Violence, 11(4), 349–353. https://doi.org/10.1037/vio0000392
- Nagin, DS, Koper, CS, Lum, C. Policy recommendations for countering mass shootings in the United States. Criminol Public Policy. 2020; 19: 9– 15. https://doi.org/10.1111/1745-9133.12484

## Appendix A: Questions
We have no questions as of now. 
