library(shiny)
library(ggplot2)
data(mpg)

shinyUI(pageWithSidebar(
        headerPanel("Fuel consumption per type of vehicle"),
        sidebarPanel(
                helpText(h4("Content of Graph")),
                helpText("This multiplot shows the fuel consumption in Miles Per Gallon for various car-types, as a function of number of cylinders.The user can specify the driving conditions in the dropdown box below"),
                helpText(h4("Select driving condition")),
                selectInput("variable","Driving Condition:",c("City"="cty", "Highway"="hwy")),
                helpText(h4("Source")),
                helpText("The data set used is a part of the ggplot2 package, which needs to be loaded for this graph.")),
        mainPanel(
                plotOutput("mplot")
        )
        )
)