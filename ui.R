
#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
library(shiny)
# Define UI for application

fluidPage(
  titlePanel("WQD7001 - Group project"),
  textInput(inputId = "inputTextSearch", label = "Search location", width = "50%", value = ""),
  textOutput(outputId = "outputTextSearch"),
  dataTableOutput(outputId = "outputDataTable")
)