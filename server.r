library(shiny)
data(cars)

shinyServer(
    function(input, output){
        lmmod <- lm(dist ~ speed, cars)
        output$dataplot <- renderPlot({
            plot(cars$speed, cars$dist, xlab = 'Speed (mph)', ylab = 'Stopping distance (ft)')
            lines(cars$speed, lmmod$fit)
            points(input$text1, predict(lmmod, newdata = data.frame(speed = as.numeric(input$text1))), pch = 8, col = 'red')
        })
        output$text1 <- renderText({round(predict(lmmod, newdata = data.frame(speed = as.numeric(input$text1))), digits = 2)})
    }
)

