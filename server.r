library(shiny)
data(mtcars)
x1 <- mtcars$wt
x2 <- mtcars$cyl
y <- mtcars$mpg
lm1 <- lm(y ~ x1 + factor(x2))

shinyServer(
  function(input, output) {

    z <- reactive(predict(lm1, newdata=data.frame(x1=input$wt, x2=input$cyl))[[1]])
    output$ompg <- renderPrint({z()})
  }
)
