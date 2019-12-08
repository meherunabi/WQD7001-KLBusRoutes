library(shiny)

#UI section -------
fluidPage(
  titlePanel( title="Customer Information"),
  sidebarLayout(
    sidebarPanel(
      selectInput ("location","Enter Location", choices = my_data$Area)
    ),
    mainPanel(
      tableOutput("mylocation")
    )
  ))
