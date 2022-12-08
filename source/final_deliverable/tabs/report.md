# Gun Violence in the US

Daphne He ([daphnehe\@uw.edu](mailto:daphnehe@uw.edu))\
Stephanie Liu ([sliu39\@uw.edu](mailto:sliu39@uw.edu))\
Cecelia Thomas ([ceceliat@uw.edu](mailto:ceceliat@uw.edu))

*INFO-201: Technical Foundations of Informatics*\
*The Information School*\
*University of Washington*\
*Autumn 2022*

## Abstract

Gun violence in the US is an issue that has become so politically divided that people often forget that it's real people's lives we're talking about. The main question we want to address is what steps can be taken to reduce the amount of gun deaths in the US? There are actions policymakers can take like implementing waiting periods, restricting concealed-carry permits, restricting "stand your ground" laws, etc., that can reduce the amount of gun deaths annually in the US. Our project strives to build an evidence base with interactive visualizations to support restricted gun laws to avoid thousands of gun deaths and reduce gun violence in the US annually.

\
**Keywords:** gun violence,restrictions, policy, weapons, waiting period

## Introduction

Compared to other developed nations, the United States has much higher gun death rates. To address our concerns regarding gun violence over the years, we analyzed data sets comparing the statistics of gun violence incidents from 1985 to 2018. We have multiple data sets from sources like the Federal Bureau of Investigation (FBI) and Centers for Disease Control and Prevention (CDC) that outline the location of the incident, intention of the incident, number of victims, race/gender/age of the offender, etc., in each incident that is related to gun violence. By comparing variables like gender, age, race, and type of weapon used to find patterns and trends, we help to build an evidence base for lawmakers to take action and address the issue of rising gun violence in the US. There are gun control policies like handgun waiting periods and restricting concealed-carry permits that can reduce the amount of gun violence deaths in the US if all states took action to implement them.

## Design Situation

### Project Framing:

The US has always taken pride in the Second Amendment of the US Constitution, which gives people the right to bear arms. The prevalence of gun culture in the US has fueled the growth of incidents involving gun violence. In our project, we will compare trends between race, gender, education level, age, and their impact on gun violence in the US. Our visualizations will also focus on the frequency of different types of weapons used and the overall trend of gun deaths in the US from 1985 to 2018. We will examine whether a particular type of weapon is most frequently used in gun violence and if there are any explainable trends in the amount of gun deaths in the US over time based on gun control policies. There is a need to reform gun regulations in the US to address gun violence incidents as a whole.

### Human Values:

Inherent human values connected to our problem domain are love, peace, and non-violence. These values originate from human empathy and care for loved ones, since we all want to keep ourselves, family, and friends safe from harm. There is also the value of peace and respect for everyone else around you to ensure the community lives in harmony. The value of non-violence originates from the drive to protect and prevent innocents from dying from acts of violence, including shootings. The fight against the Second Amendment of the US Constitution is a long and arduous process due to the conflicting values of the American people. Some believe it is essential to bear arms as an act of defense against potential perpetrators and the government. Others believe abolishing the Second Amendment will put an end to gun violence in the US. We will look into what laws or policies should be implemented to reduce incidences of gun violence by comparing gun control laws from different states and locations based on their frequency of gun violence incidents.

### Direct and Indirect Stakeholders

Direct stakeholders include people who own guns and the politicians who represent the voice of citizens who want more gun control. Gun owners value the protection provided by their guns and are motivated to keep possession of them. On the other hand, people who fear guns value non-violence and peace and want guns to be illegal. Direct stakeholders also include anyone involved in the selling or trading of guns. Indirect stakeholders are everyone in the US because the policies and laws that affect gun control affect everyone's safety and awareness.

### Possible Harms and Benefits

Some harms with the intervention of data and technology are prejudices. If trends in the data showed that a particular demographic is more likely to commit gun violence crimes, there may be a generalization of the whole demographic to be dangerous or violent. The unanticipated consequence is that innocent people of that demographic would be harmed. The benefits of this research project is that we would have a better understanding of the trends of gun violence incidents.

## Research questions

3-5 research questions. What motivates the questions? Why are they important? See the Deign Brief, section B.4.

-   What type of weapons is most commonly involved in gun deaths in the US? How can we reduce the number of gun deaths caused by this type of weapon?
-   How does gun violence in the United States compare in different states, and are there any gun control laws or policies that explain the difference?
-   Is there a particular demographic that is more likely to commit or become a victim to gun violence, whether that be race, gender, age, etc.? How has society failed to support or protect these people?
-   How do gun violence trends from the past, such as a decade ago, compare to gun violence today? Are there any laws or policies that may affect the trend?

## The Dataset

| Data file                         | \# of Observations | \# of Variables | Citation                                                                                                                                                                                                              |
|:---------|:---------|:---------|:------------------------------------------|
| all_incidents                     | 472,821            | 7               | Werr, E. F. (2022, May 29). Gun violence incidents in the United States. Kaggle. Retrieved October 30, 2022, from <https://www.kaggle.com/datasets/emmanuelfwerr/gun-violence-incidents-in-the-usa?resource=download> |
| full_data (gun deaths in america) | 100,798            | 11              | Zelenak, A. (2018, March 20). Gun deaths in America - dataset by Azel. data.world. Retrieved October 30, 2022, from <https://data.world/azel/gun-deaths-in-america>                                                   |
| Mass Shootings Dataset Ver 5      | 319                | 12              | kanncaa1. (2018, June 22). Why gun violence increase in Texas. Retrieved October 30, 2022, from <https://www.kaggle.com/code/kanncaa1/why-gun-violance-increase-in-texas/data>                                        |

### US_gun_deaths_1985-2018 data set:

The data was collected by Periscopic, a well-established data visualization company that offers services to create impact. The gun homicide data is taken from the Federal Bureau of Investigation's Supplementary Homicide Report (SHR) Master Files. This detailed dataset, which is kept track of at the incident level, includes information on the victim, the murderer, the weapon used, the circumstances, and the scene of the crime. We are just focusing on killings involving weapons to build evidence for the implementation of more gun control policies. Therefore, activists and policymakers who support gun control would find this data set the most useful. The data is validated and credible because Periscopic is an award winning firm.

### All_incidents data set:

This dataset contains gun violence incidents, including mass shootings, from 2013 to 2022. Included in the data set are dates, the state, the city, the address, the number of people injured, and the number of deaths. Utilizing this data set will allow us to answer key research questions such as where shootings occur most, as well as observe trends and differences in the number of shootings over the past decade. Emanuel F. Werr collected gun violence data from the Gun Violence Archive and formatted it into a simple and readable dataset. This dataset is updated almost weekly and is meant to bring awareness to the magnitude of gun violence issues in America. The data used in this dataset is from the GVA which is a nonprofit organization meant to provide accurate information about gun violence in the United States. Pro-gun organizations as well as anti-gun organizations can use this data to prove any point that fits their narrative by including and excluding select information. The GVA data is collected by examining sources daily and verifying them by researchers and other processes. The data is also unbiased, as the GVA is not affiliated with any other organizations. This gun violence dataset in particular was found through Kaggle, and the GVA will be credited as well.

### Gun Deaths (full_data) data set:

This data set contains the amount of gun deaths that resulted from certain incidents of gun violence across the U.S.. It covers the date the incident occurred, the intention of each incident, the gender/race/age of the victims, location of the incident, and number of deaths total in each incident. This data set was created by Alex Zelenak, who gathered data from the CDC's "multiple cause of death" datafile, and the CDC's data from 2012-2014 on gun-related deaths. Zelenak also gathered data from the FBI's "Supplementary Homicide Reports". The data is credible and unbiased as it comes from federal agencies, meaning that the data is purely factual and not opinionated. This data set was found through the Google data set searching tool, and the CDC and FBI will be credited as well.

## Expected Implications:

Answering our research questions about the prevalence of gun violence in America will bring awareness and educate individuals on this problem. It is hopeful that if more people bring awareness to gun violence that policymakers will be more likely to reform gun regulations. However, due to extremely conflicting perspectives on gun rights in the United States it is difficult to predict tighter restrictions on gun ownership and other policies. Furthermore, technologists and designers could work together to update and create better databases for registered firearms. This includes ensuring communication between local authorities and federal authorities to prevent firearms from being purchased by at-risk individuals.

## Limitations:

Some limitations that our group may have to face while gathering our data sets is that some of the data may be outdated, even if that data is considered to be our more recent data. A few of the data sets that we have found from our research have not been updated for a few years, which leaves the validity and relevancy of our data up in the air. Furthermore, there may be some human errors, such as typos, in our data sets. The data sets we found could also be missing other important data, leaving large gaps that could make it difficult to fully comprehend the data. As a result, any trends that we find could be a result of over or underestimation due to any gaps within the data sets.

## Findings

The type of weapon most commonly involved in gun deaths in the US is overwhelmingly, handguns. This may come as a shock to some, since there has always been an emphasis on restricting the use of rifles or "assault weapons." In comparison, handguns kill people at much higher rates than rifles. These results only prove that placing restrictions on rifles is not enough. Real change means the need for more sweeping gun control laws, like the implementation of handgun waiting periods. Other ways to reduce the amount of people killed by handguns is by restricting concealed-carry permits and "stand your ground laws" because they encourage the use of bullets to try to solve conflicts. Different states and different gun relations. For example, states like California, Connecticut, Delaware, Hawaii, Maryland, Massachusetts, New Jersey, and Rhode Island have strict gun policies and therefore have the lowest per capita gun deaths according to the CDC.

![Gun Deaths Per State](state_chart.png)

According to the data on victims, we also found that Black Americans are killed by guns disproportionately. Considering that Black people only make up around 13% of the US population by over half of the gun homicide victims only proves how much society has failed to protect Black communities from gun violence. We also noticed that almost half of the gun violence victims were under the age of 30, which is concerning because that amounts to hundreds of thousands of stolen years from the lives of children and young adults. Another demographic that particularly stood out as victims are men and boys. Over 80% of the victims were male and the minority that were female were often due to domestic violence.

After reviewing the trend of gun deaths from 1985 to 2018, we noticed that there was a peak in gun deaths around 1983-1984. Before 1983, the number of gun deaths was only increasing every year. After 1984, there was a dramatic drop in gun deaths. This intrigued us, so we did more research and found out that there was a natural experiment in 1984 where the federal law imposed temporary waiting periods for guns.

![Gun Deaths from 1990 to 2005](year_chart.png)

## Discussion

These findings are especially important to take note in society because we need to protect future generations from gun violence. Gun violence in the US directly highlights the victims of society and the people our government and laws have failed to protect. The US is a very diverse country and each state has its own gun control laws. For example, California has more restrictions on gun control than Kansas, so it has lower per capita gun deaths. There is a direct correlation between more gun control and less gun deaths. In a perfect society, there would be no debate on whether guns should be allowed but reality shows that the issue with guns has become more of a political one. Politicians and activists sometimes forget the victim and the fact that there are real people dying. It's easy to overlook the severity of gun deaths if you have not been affected by it personally or first hand. Black communities are often considered the most dangerous in society, and therefore the children and adolescents there are not as protected and gun homicides happen at higher rates. It is also true that males make up the majority of gun homicides, with most of the victims being relatively young. We have all seen our fair share of movies and tv shows with gun violence, but not enough highlight the disproportionate killings of Black people. Black people only make up 13% of the population but are more than half of the reported gun homicide victims, while white people make up 60% of the population but around 20% of the victims. We need to discuss what actions need to be taken by policymakers to protect Black communities from being overrun by gun violence.

I believe that movies and tv shows can also be misleading because they shed more light on the dangers of assault weapons, rather than the handgun, which is involved in the majority of gun deaths in the US. More states should have a handgun waiting period, which is the delay between the purchase and the final acquisition of the hand gun. This delay serves as a "cooling off" and can avoid thousands of gun deaths annually. Some other policies that would protect people from handgun homicides is restricting concealed carry permits because people should not be thinking of how they can use their guns to protect themselves in public spaces. This only adds the likelihood that they would end up using the gun to resolve conflicts. Building off the idea that people should not attempt to solve problems with bullets, restricting "stand your ground" laws would also ensure that gun violence is not the first reaction in a potentially harmful situation.

## Conclusion

Handguns are most often used in gun violence incidents and lead to the most gun deaths in the US overall. There are ways that we can reduce the amount of gun deaths from handguns in the US, and one of the most effective is the implementation of handgun waiting periods. The waiting period or delay between the initial purchase of the gun to the final acquisition is a crucial "cool off" period and studies have shown that this reduces gun homicides by around 17%. Waiting periods are especially effective in preventing suicide attempts because, according to suicide survivals, they only comtemplate the action for a brief period of time. The handgun waiting period would lower the rate of suicide attempts overall. In the United States, only ten states, including the District of Columbia, have waiting periods. If all the other states were to implement waiting periods, there would be thousands of lives saved. States like Kansas allow citizens to publicly carry firearms and support shooting with firearms as a form of self-defense. This only encourages people to use bullets to attempt to solve their problems and leads to more gun deaths.

Besides discouraging the use of bullets to resolve conflicts, policymakers also have to work harder to protect future children and adolescents from gun violences. There are way too many people under the age of 30 losing their lives to gun violence, especially Black people. Black people only make up 13% of the population but are more than half of the reported gun homicide victims, while white people make up 60% of the population but around 20% of the victims. We need to discuss what actions need to be taken by policymakers to protect Black communities from being overrun by gun violence.

When we compared the number for gun deaths over time from 1985 to 2018, we noticed there was a dramatic decrease in gun deaths around 1994. After doing some research, we realized that, in 1994, the Brady Handgun Violence Prevention Act (the Brady Act) went into effect. This act imposed a waiting period of five days between purchase and acquisition from licensed dealers. This was especially effective in states that were not robust in background checks. The Brady Act requirement was removed in 1998 due to the availability of the National Instant Criminal Background Check System (NICS). According to our visualization, gun deaths kept going down until around 1999, where it started to rise again. This adds to the evidence that handgun waiting periods are highly effective in reducing gun deaths in the US. If only more policymakers took action and ensure that waiting periods are implemented in all 50 states, thousands of lives would be saved.

#### Acknowledgements

We would like to thank Professor David Henry and our Lab section TA Ishita Saxena.

## References

-   "United States Gun Death Data Visualization by Periscopic." Guns.periscopic.com, Periscopic, guns.periscopic.com/.
-   Price, Micheal. "Three Types of Laws Could Reduce Gun Deaths by More than 10%." Www.science.org, 15 June 2020, www.science.org/content/article/three-types-laws-could-reduce-gun-deaths-more-10.
-   Luca, Michael, et al. "Handgun Waiting Periods Reduce Gun Deaths." Proceedings of the National Academy of Sciences, vol. 114, no. 46, 16 Oct. 2017, pp. 12162--12165, 10.1073/pnas.1619896114. Accessed 5 Oct. 2019.
-   Gramlich, John. "What the Data Says about Gun Deaths in the U.S." Pew Research Center, Pew Research Center, 3 Feb. 2022, www.pewresearch.org/fact-tank/2022/02/03/what-the-data-says-about-gun-deaths-in-the-u-s/.

## Appendix A

No questions!
