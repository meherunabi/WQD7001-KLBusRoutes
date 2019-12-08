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

#----------------------------------------
#Server Section#######################


  function(input,output)
{
  output$mylocation <- renderTable({
    locfilter<-subset(my_data, my_data$Area == input$location)
  })
}
#-----
#---------------------
shinyApp(ui=ui,server=server)
