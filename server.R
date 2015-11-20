library(shiny)
library(ggplot2)
data(mpg)

shinyServer(function(input,output) {
        
        output$mplot <- renderPlot({
                
                ggplot(mpg,aes_string(x="cyl",y=input$variable))+geom_point()+ facet_grid(.~class)+ylab("Miles per gallon")+xlab("Number of cylinders")
               
        })
        
})