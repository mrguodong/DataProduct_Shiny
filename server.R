library(shiny)

shinyServer(function(input, output) {
        output$plot1 <- renderPlot({
                hist(rnorm(input$n))
        })
        
        output$text <- renderText({
                paste("Comments from user:", input$text)
        })
})