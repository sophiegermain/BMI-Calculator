shinyUI(pageWithSidebar(
  headerPanel("Assess your Body Mass Index"),
  sidebarPanel(
    "This app helps you calculate your Body Mass Index, a metric designed to tell you whether your weight is healthy relative to your height. You are also asked to guess how healthy you are upfront, which will be compared to your actual result.",
    br(),
    br(),
    numericInput('weight', 'Enter your weight (in kg):', 100, min = 30, max = 200, step = 1),
    numericInput('height', 'Enter your height (in cm)', 100, min = 100, max = 200, step = 1),
    radioButtons('guess','What do you think you are?',c("Underweight"="u","Healthy weight"="h","Overweight"="ov","Obese"="ob"),selected="h",inline=FALSE),
    actionButton("goButton", "Submit"),
    br(),
    br(),
    "Disclaimer: BMI is not a perfect measure of health, and should be considered not more than a guideline."
    ),
  mainPanel(
    h4('Your Body Mass Index is:'),
    textOutput("result"),
    textOutput("phrase"),
    textOutput("truth")
  )
))