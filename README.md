# DataAnalysis


example of reactive data visualization server done in R
reactive({}) - caches hash-map input:output, and gives cachces output if encounters same input more than once (no need to recalulate!).

Server calulates forecast for a stock price and displays this to user.

## DEMO
![demoImage2](https://raw.githubusercontent.com/syzer/forecastOfStock/master/wiki/demo.png)

## HOWTO

R 3.1.2+ required
    
go to the R console:

    install.packages('quantmod')
    install.packages('shiny')
	install.packages('forecast')
    library('shiny')
   
    



and in the R console:
    
    library('quantmod')
    library('shiny')
    runApp('forecastOfStock')

