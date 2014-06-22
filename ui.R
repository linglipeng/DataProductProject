library(shiny)
shinyUI(pageWithSidebar(
  
  headerPanel("Predicting Car Fuel Efficiency (Mileage Per Gallon)"),
  sidebarPanel(
    numericInput('wt', 'Input the Car Weight (lb/1000):', 3, min = 1, max = 6, step = 0.5),
    radioButtons("cyl", "Input the number of cylinders:",
                   c("4" = "4",
                     "6" = "6",
                     "8" = "8"))
     
  ),
  mainPanel(  
        h4('Instruction: You need to input the car weight (Min - 1, Max - 6 in lb/1000 unit) and the number of cylinders to predict MPG value. Use left panel inpt boxes to input.'),     
        h4('Based on your input, the predicted MPG value is:'),
        verbatimTextOutput("ompg")
  )

))


