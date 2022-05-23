install.packages("dplyr")
library("dplyr")

Covid_Demo<- read.csv("https://raw.githubusercontent.com/narditek/Exploratory-Analysis-Impacts-of-COVID-in-relations-with-Race-and-Deaths/main/Distribution_of_COVID-19_Deaths_and_Populations__by_Jurisdiction__Age__and_Race_and_Hispanic_Origin%20(1).csv")

summary_info<-list()
summary_info$num_observations<- nrow(Covid_Demo)
summary_info$num_features<- ncol(Covid_Demo)

summary_info$most_state_death<- max(Covid_Demo$State)
summary_info$most_race_death<- max(Covid_Demo$Race.Hispanic.origin)
summary_info$mean_covid_death<- mean(Covid_Demo$Count.of.COVID.19.deaths)
na.omit(summary_info$mean_covid_death)

summary_info$most_state_death<- Covid_Demo %>%
  filter(Count.of.COVID.19.deaths == max(Count.of.COVID.19.deaths, na.rm = T)) %>%
  select(Count.of.COVID.19.deaths, State)