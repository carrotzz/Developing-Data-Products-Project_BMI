bmi <- function(w1, h1) {
        if (h1 < 3) {
        BMI <- round(w1 / (h1)^2,2)}
        else {BMI <- round((w1 / (h1)^2)*703,2)}
        return(BMI)
}

weightstatus <- function(w1, h1) {
        if (h1 < 3) {
                BMI <- round(w1 / (h1)^2,2)}
        else {BMI <- round((w1 / (h1)^2)*703,2)}
        if ( BMI < 18.50) {wstatus <- 'Underweight'}
        else if ( BMI < 25.00 ) {wstatus <- 'Normal'}
        else if ( BMI < 30.00) {wstatus <- 'Overweight'}
        else {wstatus <- 'Obese'}
        return(wstatus)
}

library(shiny)
shinyServer(
        function(input, output) {
                output$out1 <- renderPrint({bmi(input$w1,input$h1)})
                output$out2 <- renderPrint({weightstatus(input$w1,input$h1)})
        })