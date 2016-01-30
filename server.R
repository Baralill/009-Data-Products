library(datasets)
library(shiny)

########################################################################
# use the trees dataset from the R package datasets
# This gives the Girth, Height and Volume for Black Cherry Trees
# Girth (inches)
# Height (ft)
# Volume (cubic ft)
########################################################################

treeData <- trees

library(shiny)

# Define server logic required to draw a plot
shinyServer(function(input, output) {
  
  # Expression that generates a plot. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should be automatically
  #     re-executed when inputs change
  #  2) Its output type is a plot
  
   output$treePlot <- renderPlot({
    x    <- treeData[,c(input$x)]
    y    <- treeData[,c(input$y)]
    plot(x,y, xlab = input$x, ylab = input$y, pch=16, cex=1, main="Tree Dimensions")
    lines(stats::lowess(x,y))
    # draw the plot
    
  })
  
  # Generate the correlation of the dataset
  output$corr <- renderPrint({
    x    <- treeData[,c(input$x)]
    y    <- treeData[,c(input$y)]
    tags$b(paste("Correlation =", round(cor(x,y),4)))
  })
}
)
