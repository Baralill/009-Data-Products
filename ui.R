library(shiny)

# Define UI for application
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Tree Dimensions"),
  
  # Sidebar
  sidebarLayout(
    sidebarPanel(
      selectInput("x", "x Variable:",
                                c("Girth (in)" = "Girth",
                                 "Height (ft)" = "Height",
                                "Volume (cu.ft)" = "Volume")),
      
      selectInput("y", "y Variable:",
                  c("Girth (in)" = "Girth",
                    "Height (ft)" = "Height",
                    "Volume (cu.ft)" = "Volume")),
     helpText("Note: Select from the drop down box the variables to display")
     )
    ,
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("treePlot"),
      tableOutput("corr")
    )
  )
))