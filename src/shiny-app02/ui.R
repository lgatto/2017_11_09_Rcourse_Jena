library(shiny)

shinyUI(fluidPage(
    titlePanel("My Shiny App"),
    sidebarLayout(
        sidebarPanel(
            textInput("textInput", "Enter text here:")
        ),
        mainPanel(
            textOutput("textOutput"),
            plotOutput("distPlot")            
        )
    )
))

