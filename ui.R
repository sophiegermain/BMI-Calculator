shinyUI(pageWithSidebar(
  headerPanel("Assess your Body Mass Index"),
  sidebarPanel(
    numericInput('weight', 'Enter your weight (in kg):', NULL, min = 30, max = 200, step = 1),
    numericInput('height', 'Enter your height (in cm)', NULL, min = 100, max = 200, step = 1),
    #sliderInput('mu', 'How healthy do you think your weight is (relative to height)? (0=less healthy than everyone else, 100=more healthy than everyone else):',value = 50, min = 0, max = 100, step = 5,),
    radioButtons('guess','What do you think you are?',c("Underweight"="u","Healthy weight"="h","Overweight"="ov","Obese"="ob"),selected=NULL,inline=FALSE),
    #goButton('Submit')
    actionButton("goButton", "Submit")
    ),
  mainPanel(
    h4('Your Body Mass Index is:'),
    textOutput("result"),
    textOutput("phrase"),
    textOutput("truth")
  )
))