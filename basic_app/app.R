#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

# Load packages
library(here)
library(shiny)

# Load functions
source(here("basic_app", "functions", "gal2lit.R"))

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Old Faithful Geyser Data"),

    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
            sliderInput("bins",
                        "Select number of bins:",
                        min = 1,
                        max = 30,
                        value = 15),
            numericInput("gallons",
                         "Gallons:",
                         min = 1,
                         max = 500,
                         value = 100)
        ),
        
        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("faithfull_hist"),
            textOutput("liters")
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
    
    output$faithfull_hist <- renderPlot({
        hist(faithful$eruptions,
             probability = TRUE,
             breaks = as.numeric(input$bins),
             xlab = "Duration (minutes)",
             main = "Geyser eruption duration")
    })
    
    output$liters <- renderText({
        # draw the histogram with the specified number of bins
        gal2lit(input$gallons)
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
