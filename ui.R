library(shiny)
library(shinyjs)
library(shinydashboard)
library(DT)
library(shinyWidgets)
library(dplyr)
library(shinyBS)
library(RJDBC)
library(plyr)

shinyUI(
  fluidPage(title="OP Reporting",
            useShinyjs(),
            div(id="loadingPage",
                div(class = "loader"),
                navbarPage(title=div(), theme = "navbar_new.css",
                           tabPanel(title=h1("Willkommen beim OP Reporting Tool der PFS"),
                                    mainPanel(
                                      box(
                                        div(img(src='canyon.jpg', width=1845))
                                        
                                      )
                                    )
                           )
                )
            )
            ,
            
            hidden(div(id="mainPage",
                       navbarPage(id = "tabsPanel",title=div(img(src="porsche_logo.jpg", width=230)), theme = "navbar_new.css",
                                  
                                  tabPanel(title=div(img(src='porsche_wappen.PNG', width=50)), uiOutput("text")
                                  ),
                                  
                                  tabPanel("Vertragsbestand",
                                           
                                           uiOutput("panel1")
                                           
                                  ))))
  )
)
