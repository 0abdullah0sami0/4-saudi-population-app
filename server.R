shinyServer(function(input,output,session){
  
  plot <- reactive({
    
    Plot <- Population %>% 
      mutate(year = as.Date(paste0("01-01-",year),format = "%d-%m-%Y")) %>%
      group_by(year,region) %>%
      summarise(Population = sum(population)) %>%
      # mutate(category = ifelse(Population < 1000000,"< 1M",ifelse(Population < 2000000, "1M < Population < 2M", "> 2M"))) %>%
      
      ggplot(aes(x = year, y = Population , color = region)) +
      geom_line() +
      geom_point(aes(text = format(year,"%Y"))) +
      xlab("Year") +
      ylab("Population (in Millions)") +
      # scale_color_discrete(name = "Population") +
      scale_color_manual(values = c("#cad2c5","#84a98c","#52796f","#03045e","#9b2226","#bb3e03","#0077b6","#354f52","#ca6702","#2f3e46","#ee9b00","#00b4d8","#2b2d42")) +
      theme_classic() +
      scale_y_continuous(labels = label_number(suffix = " M", scale = 1e-6)) +
      scale_x_date(date_breaks = "1 year",date_labels = "%Y") +
      theme(plot.margin = margin(2,0.5,0.5,0.5,"cm"),plot.title = element_text(size = 12), legend.position = "none")
    
    ggplotly(Plot,tooltip = c("text", "y","color")) %>%
      layout(title = list(text = paste0("Evolution of Saudi Arabia's population by Region \n between 2010 and 2022",
                                        '<br>',
                                        '<sup>',
                                        'Source: portal.saudicensus.sa','</sup>')))
  })
  
  output$plot1 <- renderPlotly({
    plot()
  })
  
  output$plot2 <- renderPlotly({
    plot()
  })
  
})
  