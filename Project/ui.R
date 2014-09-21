library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("BMI for Adults"),
        sidebarPanel(
                h2('Introduction:'),
                h4('This app is pretty easy to track an adult weight status by calculating his/her BMI.'), 
                h6('* Enter weight and height on the below sidebar, and check your BMI and your weight status on the right main bar. '),

                h3('Weight'),
                numericInput('w1', 'Enter weight ( kg or lbs ) here: ', 0, min=0, max=600, step=0.1), 
                h3('Height'),
                numericInput('h1', 'If weight in kg (or lbs), then enter height in meter (or inch) here: ', 0.01, min=0, max=3, step=0.01),
                submitButton('Submit'), 
                
                h2('Description:'),
                h5('Input your weight in kg (unit) and your height in meter (unit) or weight in lbs (unit) and height in inch (unit). '),
                h5('  Example 1: Weight=68 kg, Height=1.65 m'),
                h5('Please enter 68 in weight and 1.65 in height.'),
                h5('  Example 2: Weight=150 lbs, Height =5 feet 5 inches (65")'),
                h5('Please enter 150 in weight and 65 in height.')
        ),
        mainPanel(
                h4('BMI Calculation: '),
                h4('Formula 1 : Weight (kg) / [Height (meter)]^2 '),
                h4('or '),
                h4('Formula 2 : (Weight (lb) / [Height (inch)]^2) * 703 '),
                h4('--------------------------------------------------------------------------------------'),  
                
                h4('*Keep Weight And Height In Corresponding Units To Obtain Correct BMI !'),
                h3('Your BMI'),
                verbatimTextOutput('out1'),
                h3('Your Weight Status'),
                verbatimTextOutput('out2'),
                h4('--------------------------------------------------------------------------------------'),     
                
                h4('Below is the relationship between BMI and Weight Status for adult '),
        
                h5('      BMI       | Weight Status   '),
                h5('Below 18.5     |  Underweight   '),
                h5('18.5 – 24.9    |  Normal        '),
                h5('25.0 – 29.9    |        Overweight   '),
                h5('30.0 and Above |  Obese   ')
        )
))