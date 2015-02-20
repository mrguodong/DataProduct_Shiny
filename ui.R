#***************************************************************
# Shiny
#***************************************************************
#install.packages("shiny")
library(shiny)
shinyUI(fluidPage(
        titlePanel("Normal Simulation"),
        fluidRow(
                column(3, wellPanel(
                        sliderInput("n", "Please Select N for your normal:", min = 10, max = 1000, value = 200,
                                    step = 10),
                        textInput("text", "Comments:", ""),
                        submitButton("Submit"),
                        tags$small("*Please click Submit Button to reflect your selections!")
                )),
                column(6,
                       plotOutput("plot1", width = 400, height = 300),
                       verbatimTextOutput("text")
                )
        )
))