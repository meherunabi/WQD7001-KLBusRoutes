
#----------------------------------------
#Server Section#######################


  function(input,output)
{
  output$mylocation <- renderTable({
    locfilter<-subset(my_data, my_data$Area == input$location)
  })
}

