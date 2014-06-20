library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Predicting Car Fuel Efficiency (Mileage Per Gallon)"),
  sidebarPanel(
    numericInput('wt', 'Input the Car Weight (lb/1000):', 3, min = 1, max = 6, step = 0.5),
    radioButtons("cyl", "Input the number of cylinders:",
                   c("Value 1" = "4",
                     "Value 2" = "6",
                     "Value 3" = "8"))
     
  ),
  mainPanel(       
        h4('Based on your input, the predicted mpg value is:'),
        verbatimTextOutput("ompg")
  )

))


