#load the tidyverse, dplyr, stringr package
install.packages("tidyverse")
library(tidyverse)
install.packages("dplyr")
library("dplyr")
install.packages("stringr")
library(stringr)


#load the dataset
Covid_Dem<-read_csv("https://raw.githubusercontent.com/narditek/Exploratory-Analysis-Impacts-of-COVID-in-relations-with-Race-and-Deaths/main/Distribution_of_COVID-19_Deaths_and_Populations__by_Jurisdiction__Age__and_Race_and_Hispanic_Origin%20(1).csv")
#create a new dataset that includes only the following columns: Race/Hispanic origin, Count of Covid-19 Death, and state
Covid_Dem_dataset <- Covid_Dem[c("State", "Race/Hispanic origin" ,"Count of COVID-19 deaths")]
#total deaths by covid by States
state_death<-Covid_Dem_dataset %>% 
  group_by(State) %>% 
  summarize(Count=n()) %>% 
  arrange(Count)

#The States, specifically top 3 states with the highest Covid deaths
Covid_dem_State_3_highest_death<-State_death %>% 
  head(3)