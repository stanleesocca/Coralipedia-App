#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinythemes)
library(shinydashboard)
library(shinyWidgets)
library(magick)


ui <- fluidPage(
    theme = shinytheme("superhero"),
    
    # the title page of the app
    titlePanel("Coralipedia"),
    
    h4("App developed under the professional practice topic - 'Investigating coral community change and potential recovery following a mass coral bleaching and mortality event'"),
    h6("University of Oxford, UK"),
    
    h5("by Nmor Stanley"),
    
    # a short description of the app
    p("This is a simple app that will help to streamline the Identification of some commonly occuring coral species found in the 
       Chagos Archipelagos and to an extension other marine environment. This is a summation of my regular day job in 
       ZSL - Counting and Identification of coral using a VB sofware called CPCce. Like most taxonomical identification of species, ambiguity in species ID is a major problem. So, I developed this personalized guide to help newbie overcome the challenges that comes with species ID.
       The app is thus a simplified version for purely pedagogical purpose."),
    
    # User interface layout
   fluidRow(
            column(2,
                   h6("Select any coral group"),
                    selectInput("img", "Coral categories", 
                                choices = c("Acropora","Porites", "Favia", "Fungia")),
            
            h6("Select the type of coral physiological condition you will like to see"),
            
            uiOutput("condition.type")
        ),
        
        column(8,
                 h6("Coral comes in different form, you can also pick below one of the form to see the coral substrate form"), 
                 uiOutput("subcategory"),
                     tabsetPanel(
                        tabPanel("Simple feature", # Plot of the selected coral type
                       imageOutput("imageplot"),
                       
                       # A slight break between the displayed image and description
                       br(),
                       
                       #A text field for dynamics displayed of the description of species
                       textOutput("pre_set")), 
              tabPanel("Other random species", 
                       h5("Click button below to view a random species of coral"),
                       fluidRow(actionButton("Others", "Other species")), 
                       br(),
                       fluidRow(imageOutput("randomimage"))), 
              ## Advanced part for future work
              tabPanel("Future work - Advanced", 
                       h6("This part of the app is still currently in development stage but the idea is to give the users some interactivity that could help to dynamically identify the coral species in an image frame. Click on any part of the image below and drag, hover and move around."),
                       
                       imageOutput("brushedimage", click = "pointclick", 
                                                             brush = brushOpts("brush.part"), 
                                                             hover = "plot.hover"))
              )
              
            )
), 

br(),

h6("The initial goal of the app was to automate the process of identify the different coral assemblage by simple point and click; you, the user would just point on any given quadrant and the app would Identify the species interactively for you using a dedicated algorithm (implementing some dynamic JS modules).
       Unfortunately, that version is still very much in progress ('Future work - Advanced' tab) as I am currently developing the algorithm runtime and database server. Time contrainst and the need to provide an exhibition materials; demand that I follow a more pragmatic approach, thus the birth of this simple app that could help initiate the coral reef 
       enthusiast and newbie on taxa identification."),

fluidRow(splitLayout(cellWidths = c("25%", "25%", "25%", "25%"),
    img(src = "IMBRSea.png", height = "70px", width = "100px"),
    img(src = "Erasmus.png", height = "60px", width = "200px"),
    img(src = "oxford.png", height = "60px", width = "60px"),
    img(src = "zsl.png", height = "60px", width = "60px")
    )), 
br(),
h6("This app is created by Banyul Bandits, a random hack group spearheaded by Alberto Stanislav under the #Codefornature initiative. It was inspired by Stephanie Roy's suggestion and coordinated by Dr Catherine Head
    of University of Oxford, UK. For comments, suggestions for improvement, photo add-ins, bug fix and interest in the future of the project, contact stanley.nmor@imbrsea.eu")
)
