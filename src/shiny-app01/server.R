library(shiny)

shinyServer(function(input, output) {
    output$textOutput <- renderText(paste("User-entered text: ",
                                          input$textInput))
})
