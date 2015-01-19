bmi <- function(weight,height) as.numeric(weight)*10000/as.numeric(height)^2

acc <- function(guess,bmi) {
              if((guess=="u" & bmi<18.5)|(guess=="h"& 18.5<bmi & bmi <=25)|(guess=="ov"& 25<bmi & bmi <=30)|(guess=="ob"& 30<bmi)) 
                    {"You were right! You are"}
              else 
                    {"You actually are"}
}

class <- function(bmi) {
              if(bmi<18.5) {"Underweight"}
              else if(18.5<bmi & bmi <=25) {"Healthy weight"}
              else if(25<bmi& bmi<=30) {"Overweight"} 
              else {"Severely obese"}
}

shinyServer(
  function(input, output) {
    
    output$result <- renderPrint({
      input$goButton
      round(as.numeric(bmi(input$weight,input$height),digits=0))})
    output$phrase <- renderText({
      input$goButton
      acc(input$guess,bmi(input$weight,input$height))})
    output$truth <- renderText({
      input$goButton
      class(bmi(input$weight,input$height))})
  
    }
)