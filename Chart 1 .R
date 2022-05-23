# Load ggplot2
library(ggplot2)

Covid_Demo<- read.csv("https://raw.githubusercontent.com/narditek/Exploratory-Analysis-Impacts-of-COVID-in-relations-with-Race-and-Deaths/main/Distribution_of_COVID-19_Deaths_and_Populations__by_Jurisdiction__Age__and_Race_and_Hispanic_Origin%20(1).csv")

group_state_death<-group_by(Covid_Demo, Count.of.COVID.19.deaths, State)

ggplot(group_state_death,aes(x =Count.of.COVID.19.deaths, y= State)) +
  geom_bar(stat = "identity")