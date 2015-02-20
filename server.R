library(shiny)
test <- read.csv("C:\\GCLocal\\ETL\\PhaseIII\\RawData\\GEO_Q2FY15.txt")

shinyServer(function(input, output) {
        output$plot1 <- renderPlot({
                hist(rnorm(input$n))
        })
        
        output$text <- renderText({
                paste("Comments from user:", input$text)
        })
})