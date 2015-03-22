#Open library
library(shiny)
library(caret)

#Set up model
model <- glm(hp ~ mpg + cyl + disp + drat + wt + qsec + vs + am + gear + carb, data = mtcars)

#Shiny Server code
shinyServer(
  function(input, output) {
    
    #Take user inputs for reporting
    #output$mpg <- renderText({input$id1})
    #output$cyl <- renderText({input$id2})
    
    
    #Output for reporting prediction
    output$result <- renderText ({
      
      #Prediction
      mpg = input$mpg
      cyl = input$cyl
      disp = input$disp
      drat = input$drat
      wt = input$wt
      qsec = input$qsec
      vs = input$vs
      am = input$am
      gear = input$gear
      carb = input$carb
      
      predict(model,data.frame(mpg,cyl,disp,drat,wt,qsec,vs,am,gear,carb))
      
    })
    
  }
)
