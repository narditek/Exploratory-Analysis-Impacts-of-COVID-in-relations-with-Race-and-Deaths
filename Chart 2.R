library("ggplot2")
library(viridis)
library(hrbrthemes)

Covid_Demo<- read.csv("https://raw.githubusercontent.com/narditek/Exploratory-Analysis-Impacts-of-COVID-in-relations-with-Race-and-Deaths/main/Distribution_of_COVID-19_Deaths_and_Populations__by_Jurisdiction__Age__and_Race_and_Hispanic_Origin%20(1).csv")
Covid_Demo%>%
ggplot(aes(x=Count.of.COVID.19.deaths, y= Race.Hispanic.origin, fill= Count.of.COVID.19.deaths)) +
 geom_boxplot() +
 scale_fill_viridis(discrete = TRUE, alpha= 0.6, option = "A") +
 theme_ipsum () +
 theme (
   legend.position = "none",
   plot.title = element_text(size=11)
 ) +
   ggtitle("Basic boxplot") +
   xlab("")
 