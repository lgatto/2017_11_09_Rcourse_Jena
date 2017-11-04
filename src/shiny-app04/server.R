library(shiny)

shinyServer(function(input, output) {
    output$textOutput <- renderText(paste("User-entered text: ",
                                          input$textInput))
    output$distPlot <- renderPlot({
        x    <- faithful[, 2]
        bins <- seq(min(x), max(x), length.out = input$bins + 1)
        hist(x, breaks = bins, col = input$col)
    })
    
})
