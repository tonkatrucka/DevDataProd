shinyUI(
  pageWithSidebar(
    headerPanel("Predict the horsepower of a car by describing its features"),
    sidebarPanel(
      numericInput('mpg', 'MPG', 20, min = 10, max = 40, step = 1),
      numericInput('cyl', 'Number of Cylinders', 2, min = 2, max = 12, step = 2),
      numericInput('disp', 'Displacement (cu.in.)', 300, min = 70, max = 500, step = 1),
      numericInput('drat', 'Rear Axle Ratio', 3, min = 2, max = 5, step = 0.01),
      numericInput('wt', 'Weight (lb/1000)', 3, min = 1.5, max = 6, step = 0.1),
      numericInput('qsec', '1/4 mile time', 18, min = 14, max = 23, step = 0.1),
      numericInput('vs', 'V-type or straight cylinder configuration', 0, min = 0, max = 1, step = 1),
      numericInput('am', 'Transmission (0 = automatic, 1 = manual)', 0, min = 0, max = 1, step = 1),
      numericInput('gear', 'Number of forward gears', 4, min = 3, max = 8, step = 1),
      numericInput('carb', 'Number of carburetors', 4, min = 1, max = 8, step = 1)
    ),
    mainPanel(
      h2('Documentation
         
         '),
      h3('This app has been trained on the mtcars dataset to predict the amount of horsepower
         a car will product based upon 10 other characteristics of the car.'),
      h3('In order for this glm model to work, please ensure that all fields have a value.'),
      h3('Otherwise, have fun!
         
         
         '),
      
      h4('Results of prediction'),
      #       h4('You entered mpg of:'),
      #       textOutput('mpg'),
      #       h4('You entered cyl of:'),
      #       textOutput('cyl'),
      h4('Based on the data input, the Horse Power prediction is '),
      tableOutput('result')
    )
  )
)