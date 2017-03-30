library(shiny)

shinyUI(fluidPage(
  titlePanel("Reactive Stock Forecast and Visualization"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Loads data from yahoo finance."),

      selectInput("symb", 
                  label = "Choose a stock to display",
                  choices = c("BAC","IBM", "YHOO", "TGT","AAPL","TSLA","AMZN","MSFT"),
                  selected = "BAC"),
      
    
      dateRangeInput("dates", 
        "Date range",
        start = "2012-01-01", 
        end = as.character(Sys.Date())),
   
      actionButton("get", "Get Stock")
    ),
    
    mainPanel(plotOutput("plot"))
  )
))