
library(shiny)

shinyUI(pageWithSidebar(
    headerPanel('Illustrating Simple Linear Regression'),
    sidebarPanel(
        textInput(inputId = "text1", label = "Input speed"),
        submitButton('Submit'),
        h5('This app is to illustrate Simple Linear Regression using R dataset "cars". The data give the speed of cars and the distances taken to stop. First, plot distance against speed (black circles); Second, fit a straight line (Simple Linear Regression); Third, use the regression model to predict a new observation. If you enter a Speed number into the input box and then click "Submit", a predicted stopping distance will be shown in the main panel and a red star will appear on the fitted line as well. (Note: the predicted value could be displayed on the plot only when input peed is between 4 and 25 due to the scale limit)')
    ),
    mainPanel(
        p('Predicted distance'),
        textOutput('text1'),
        plotOutput('dataplot')
    )
))

