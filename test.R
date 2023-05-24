library(dplyr)
library(ggplot2)
library(stats)
library(shinyWidgets)
library(glue)


# Define UI for application that draws a histogram
ui <- fluidPage(
  
  # Application title
  titlePanel("Data Analysis")
  
)

# Define server logic required to draw a histogram
server <- function(input, output) {
  
}

# Run the application 
shinyApp(ui = ui, server = server)
