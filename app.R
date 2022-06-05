#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(plotly)
library(dplyr)
library(raster)
library(leaflet)
library(leaflet.minicharts)
library(htmltools)
library(shinyWidgets)
library(utils) 
library(RColorBrewer)


#upload the datset
Covid_Dem<- read.csv("https://raw.githubusercontent.com/narditek/Exploratory-Analysis-Impacts-of-COVID-in-relations-with-Race-and-Deaths/main/Distribution_of_COVID-19_Deaths_and_Populations__by_Jurisdiction__Age__and_Race_and_Hispanic_Origin%20(1).csv")
#Total Covid-death count for each state 

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Interactive map between Covid-19 related death compared to USA States and Race"),

    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
            sliderInput("range",
                        "Number of Covid-19 deaths:",
                        min = 0,
                        max = 10000,
                        value = 600)
        ),

        # Main page
        mainPanel(
           leafletOutput("map")
        )
    )
)


#create a color palette for the map: 
my_palette<-colorNumeric(palette = "viridis",domain = Covid_Dem_dataset$`Count of COVID-19 deaths`,na.color = "transparent")
my_palette(c(45,43))
    


#prepare the text for tooltips: 


# Define server logic required to draw a map 
server <- function(input, output) {

    output$map <- renderLeaflet({
        leaflet() %>% 
        setView(-96,37.8,4) %>% 
        addProviderTiles(providers$OpenStreetMap)
        
        
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
