library(shiny)
library(stringr)
library(ggplot2)
library(dplyr)
library(tidyr)
dat.2 <- readRDS("data/dat_2.RDS")

server <- function(input, output) {
  output$selected_var <- renderText({ 
    gene <- str_to_title(input$gene, locale = "en")
    paste("You have chosen the gene",gene)
  })
  
  output$plot <- renderPlot({
    genesymb <- str_to_title(input$gene, locale = "en")
    dat.2[,c(5,6,8,10,12)] %>% dplyr :: filter(`Gene.symbol` == genesymb) %>% 
      pivot_longer(!`Gene.symbol`, names_to= "Comparison",values_to="Log FC") %>% 
      ggplot()+
      geom_col(aes(x=`Comparison`,y=`Log FC`,fill=`Comparison`))+
      theme_minimal()+
      ggtitle(paste(genesymb,"Expression"))+
      geom_rug()+
      xlab("Comparison") +
      ylab(expression(paste("log"[2],"(FC)"))) +
      geom_hline(yintercept = c(-1,1),color ="red",size=1,linetype="dashed")+
      theme(axis.text = element_text(size=15),axis.text.x = element_blank(),
            axis.title = element_text(size = 20),
            plot.title = element_text(size = 25, face = "bold"),
            legend.text = element_text(size = 14),
            legend.title = element_text(size = 18))
  }) 
}
