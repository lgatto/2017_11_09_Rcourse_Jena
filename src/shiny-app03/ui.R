library(shiny)

shinyUI(fluidPage(
    titlePanel("My Shiny App"),
    sidebarLayout(
        sidebarPanel(
            textInput("textInput", "Enter text here:"),
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 50,
                        value = 30)            
        ),
        mainPanel(
            textOutput("textOutput"),
            plotOutput("distPlot")            
        )
    )
))

