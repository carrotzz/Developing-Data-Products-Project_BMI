library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("BMI for Adults"),
        sidebarPanel(
                numericInput('w1', 'Enter weight ( kg or lbs ) here: ', 0, min=0, max=600, step=0.1), 
                numericInput('h1', 'If weight in kg (or lbs), then enter height in meter (or inch) here: ', 0.01, min=0, max=3, step=0.01),
                submitButton('Submit')   
        ),
        mainPanel(
                h5('*Keep Weight And Height In Corresponding Units To Obtain Correct BMI !'),
                h4('Your BMI'),
                verbatimTextOutput('out1'),
                h4('Your Weight Status'),
                verbatimTextOutput('out2')
        )
))