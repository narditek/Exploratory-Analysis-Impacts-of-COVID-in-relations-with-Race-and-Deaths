#Chart 1(Histogram/Basic density Chart):Comparing the Covid Count Death to Race/Ethnicity and State

#load the dataset and package
install.packages("tidyverse")
library(tidyverse)
install.packages("dplyr")
library("dplyr")
install.packages("stringr")
library(stringr)
library(ggplot2)


#load/create the dataset
Covid_Dem<-read.csv("https://raw.githubusercontent.com/narditek/Exploratory-Analysis-Impacts-of-COVID-in-relations-with-Race-and-Deaths/main/Distribution_of_COVID-19_Deaths_and_Populations__by_Jurisdiction__Age__and_Race_and_Hispanic_Origin%20(1).csv")

#Make the histogram
Covid_Dem %>%
  filter(Distribution.of.COVID.19.deaths....<500 ) %>%
  ggplot( aes(x=Distribution.of.COVID.19.deaths....)) +
  geom_density(fill="#69b3a2", color="#e9ecef", alpha=0.8)