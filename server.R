
server <- function(input, output){
  
  # algorithm to select the images given the coral type and form
  # each parallel if case signify the coral type
  # each series case signify the coral form
  
  
  selectedimg <- reactive({
    # case for Acropora in difference form and condition
    if(input$img == "Acropora"){
      # case 1 = Table and Healthy
      if(input$coralform == "Table" && input$coralcond == "Healthy"){
        images_filepaths <- normalizePath(file.path("www/Table/Healthy", paste(input$img, ".jpg", sep = ""))) 
        
        # case 2 = Table and Bleached
      } else if(input$coralform == "Table" && input$coralcond == "Bleached"){
        images_filepaths <- normalizePath(file.path("www/Table/Bleached", paste(input$img, ".jpg", sep = "")))
        # case 3 = Table and Dead with turf alage
      } else if(input$coralform == "Table" && input$coralcond == "Dead with turf algae"){
        images_filepaths <- normalizePath(file.path("www/Table/DTA", paste(input$img, ".jpg", sep = "")))
        # Case 4 = Table and Dead with Red algae
      } else if(input$coralform == "Table" && input$coralcond == "Dead with Red Algae"){
        images_filepaths <- normalizePath(file.path("www/Table/DRC", paste(input$img, ".jpg", sep = "")))
        
        
        # case 5 = Brached and Healthy
      } else  if(input$coralform == "Branched" && input$coralcond == "Healthy"){
        images_filepaths <- normalizePath(file.path("www/Branched/Healthy", paste(input$img, ".jpg", sep = ""))) 
        # case 6 = Branched and Bleached
      } else if(input$coralform == "Branched" && input$coralcond == "Bleached"){
        images_filepaths <- normalizePath(file.path("www/Branched/Bleached", paste(input$img, ".jpg", sep = "")))
        # case 7 = Branched and Dead with turf alage
      } else if(input$coralform == "Branched" && input$coralcond == "Dead with turf algae"){
        images_filepaths <- normalizePath(file.path("www/Branched/DTA", paste(input$img, ".jpg", sep = "")))
        # Case 8 = Branched and Dead with Red algae
      } else if(input$coralform == "Branched" && input$coralcond == "Dead with Red Algae"){
        images_filepaths <- normalizePath(file.path("www/Branched/DRC", paste(input$img, ".jpg", sep = "")))
      }
      
      # Case for Porites
    } else if(input$img == "Porites"){
      # case  = Massive and Healthy
      if(input$coralform == "Massive" && input$coralcond == "Healthy"){
        images_filepaths <- normalizePath(file.path("www/Massive/Healthy", paste(input$img, ".jpg", sep = ""))) 
        # case 2 = Table and Bleached
      } else if(input$coralform == "Massive" && input$coralcond == "Bleached"){
        images_filepaths <- normalizePath(file.path("www/Massive/Bleached", paste(input$img, ".jpg", sep = "")))
        # case 3 = Table and Dead with turf alage
      } else if(input$coralform == "Massive" && input$coralcond == "Dead with turf algae"){
        images_filepaths <- normalizePath(file.path("www/Massive/DTA", paste(input$img, ".jpg", sep = "")))
        # Case 4 = Table and Dead with Red algae
      } else if(input$coralform == "Massive" && input$coralcond == "Dead with Red Algae"){
        images_filepaths <- normalizePath(file.path("www/Massive/DRC", paste(input$img, ".jpg", sep = "")))
        
        
        # case 5 = Sub-massive and Healthy
      } else  if(input$coralform == "Sub-massive" && input$coralcond == "Healthy"){
        images_filepaths <- normalizePath(file.path("www/Sub-massive/Healthy", paste(input$img, ".jpg", sep = ""))) 
        # case 6 = Sub-massive and Bleached
      } else if(input$coralform == "Sub-massive" && input$coralcond == "Bleached"){
        images_filepaths <- normalizePath(file.path("www/Sub-massive/Bleached", paste(input$img, ".jpg", sep = "")))
        # case 7 = Sub-massive and Dead with turf alage
      } else if(input$coralform == "Sub-massive" && input$coralcond == "Dead with turf algae"){
        images_filepaths <- normalizePath(file.path("www/Sub-massive/DTA", paste(input$img, ".jpg", sep = "")))
        # Case 8 = Sub-massive and Dead with Red algae
      } else if(input$coralform == "Sub-massive" && input$coralcond == "Dead with Red Algae"){
        images_filepaths <- normalizePath(file.path("www/Sub-massive/DRC", paste(input$img, ".jpg", sep = "")))
      }
      
      
    } else if(input$img == "Favia"){
      # case 1 = Massive and Healthy
      if(input$coralform == "Massive" && input$coralcond == "Healthy"){
        images_filepaths <- normalizePath(file.path("www/Massive/Healthy", paste(input$img, ".jpg", sep = ""))) 
        # case 2 = Table and Bleached
      } else if(input$coralform == "Massive" && input$coralcond == "Bleached"){
        images_filepaths <- normalizePath(file.path("www/Massive/Bleached", paste(input$img, ".jpg", sep = "")))
        # case 3 = Table and Dead with turf alage
      } else if(input$coralform == "Massive" && input$coralcond == "Dead with turf algae"){
        images_filepaths <- normalizePath(file.path("www/Massive/DTA", paste(input$img, ".jpg", sep = "")))
        # Case 4 = Table and Dead with Red algae
      } else if(input$coralform == "Massive" && input$coralcond == "Dead with Red Algae"){
        images_filepaths <- normalizePath(file.path("www/Massive/DRC", paste(input$img, ".jpg", sep = "")))
        
        
        # case 5 = Sub-massive and Healthy
      } else  if(input$coralform == "Sub-massive" && input$coralcond == "Healthy"){
        images_filepaths <- normalizePath(file.path("www/Sub-massive/Healthy", paste(input$img, ".jpg", sep = ""))) 
        # case 6 = Sub-massive and Bleached
      } else if(input$coralform == "Sub-massive" && input$coralcond == "Bleached"){
        images_filepaths <- normalizePath(file.path("www/Sub-massive/Bleached", paste(input$img, ".jpg", sep = "")))
        # case 7 = Sub-massive and Dead with turf alage
      } else if(input$coralform == "Sub-massive" && input$coralcond == "Dead with turf algae"){
        images_filepaths <- normalizePath(file.path("www/Sub-massive/DTA", paste(input$img, ".jpg", sep = "")))
        # Case 8 = Sub-massive and Dead with Red algae
      } else if(input$coralform == "Sub-massive" && input$coralcond == "Dead with Red Algae"){
        images_filepaths <- normalizePath(file.path("www/Sub-massive/DRC", paste(input$img, ".jpg", sep = "")))
        
        # case 9 = Folia and Healthy
      }else  if(input$coralform == "Folia" && input$coralcond == "Healthy"){
        images_filepaths <- normalizePath(file.path("www/Folia/Healthy", paste(input$img, ".jpg", sep = ""))) 
        # case 6 = Folia and Bleached
      } else if(input$coralform == "Folia" && input$coralcond == "Bleached"){
        images_filepaths <- normalizePath(file.path("www/Folia/Bleached", paste(input$img, ".jpg", sep = "")))
        # case 7 = Folia and Dead with turf alage
      } else if(input$coralform == "Folia" && input$coralcond == "Dead with turf algae"){
        images_filepaths <- normalizePath(file.path("www/Folia/DTA", paste(input$img, ".jpg", sep = "")))
        # Case 8 = Folia and Dead with Red algae
      } else if(input$coralform == "Folia" && input$coralcond == "Dead with Red Algae"){
        images_filepaths <- normalizePath(file.path("www/Folia/DRC", paste(input$img, ".jpg", sep = "")))
      } 
      
      # Case for fungia  
    } else if(input$img == "Fungia"){
      # case  = Free-living and Healthy
      if(input$coralform == "Free-living" && input$coralcond == "Healthy"){
        images_filepaths <- normalizePath(file.path("www/Free-living/Healthy", paste(input$img, ".jpg", sep = ""))) 
        # case 2 = Table and Bleached
      } else if(input$coralform == "Free-living" && input$coralcond == "Bleached"){
        images_filepaths <- normalizePath(file.path("www/Free-living/Bleached", paste(input$img, ".jpg", sep = "")))
        # case 3 = Table and Dead with turf alage
      } else if(input$coralform == "Free-living" && input$coralcond == "Dead with turf algae"){
        images_filepaths <- normalizePath(file.path("www/Free-living/DTA", paste(input$img, ".jpg", sep = "")))
        # Case 4 = Table and Dead with Red algae
      } else if(input$coralform == "Free-living" && input$coralcond == "Dead with Red Algae"){
        images_filepaths <- normalizePath(file.path("www/Free-living/DRC", paste(input$img, ".jpg", sep = "")))
      }
        
      } 
  })
  

#------------------------------------------------------------------------------------------------------------------------
  # OUTPUT #---------------------------------------------------
  #------------------------------------------------------------
  
  
  # output for the selected images 
  # render the selected images 
  output$imageplot <- renderImage({
    list(src = selectedimg(), height = 400, width = 600)
  }, deleteFile = FALSE)
  
##--------------------------------------------------------------------
  
  # simple algorithm for the random species selection
  sample.image <- eventReactive(input$Others, {
    sample(list.files("www/Others"),1, replace = T)
  })
  
  
  # output for the randomly generated image species
  output$randomimage <- renderImage({
    path <- file.path("www/Others", sample.image())
    list(src = path, height = 400, width = 600)
  }, deleteFile = FALSE)
  
##-------------------------------------------------------------------
  
  # output for subcategory 
  # algorithm for the subcategory selection
  # I use a switch statement here because of the parallel case of the selection based on the input
  
  output$subcategory <-  renderUI({
    switch(input$img, 
           "Acropora" = radioButtons("coralform", "Coral form", 
                                     choices = c("Branched", "Table")),
           "Porites" = radioButtons("coralform", "Coral form", 
                                    choices = c("Massive", "Sub-massive")),
           "Favia" = radioButtons("coralform", "Coral form", 
                                  choices = c("Folia", "Massive")), 
           "Fungia" = radioButtons("coralform", "Coral form", 
                                   choices = "Free-living")
    )
  })
  
  # output for the condition type
  # algorithm for the condition type use a swiftch statement because of the parallel case of the selection
  
  output$condition.type <- renderUI({
    switch(input$img, 
           "Acropora" = radioButtons("coralcond", "coral condition", 
                                     choices = c("Healthy", "Bleached", "Dead with turf algae", "Dead with Red Algae")), 
           "Porites" = radioButtons("coralcond", "coral condition", 
                                    choices = c("Healthy", "Bleached", "Dead with turf algae", "Dead with Red Algae")), 
           "Favia" = radioButtons("coralcond", "coral condition", 
                                  choices = c("Healthy", "Bleached", "Dead with turf algae", "Dead with Red Algae")), 
           "Fungia" = radioButtons("coralcond", "coral condition", 
                                   choices = c("Healthy", "Bleached"))
    )
  })
  

  
  # render text decription based on input
  # I could also used custom pre-set species description - see species_text variables in the first case
  # output$species <- renderText({paste(species_text)})
  output$speciesdesc <- renderText({
    paste(input$img, "is a coral found in the Chagos Archipelagos. It can be easily identified by their", input$coralform, "body shape. 
        The above species is", input$coralcond, "rising from condition due to change in their external environment.")
  })
  
  
# -------------------------------------------------------------------------------------------------------  
  # output for the text description based on the selected coral type
  
  # algorithm to select the text based on the selected image
  pre_set_desc <- reactive({
    switch(input$img, 
           "Acropora" = c("The 'bed of roses' of Chagos underworld, Acropora are one of the predominant coral form in the Chagos Archipelagos. They are easily identified by 
                            the present of a brushy-like surface. They are usually brownish in colour except in case when they are bleached or diseased.
                            They can be table or branched."),
           "Porites" = c("The 'rocky balboa' of coral reef, Porites are naturally found in any underwater landscape that can provide structural support for its muscular glob-like shape. They occur as encrusting, massive and submassive type, giving them a wide niche of environment for them to assert their dominance. Usually brownish in colour, you can alway spot them when snorkelling as a rocky mass with irregular bump."), 
           "Favia" = c("Favia are 'colonial and folia' formed coral that are prevalent in most underwater landscape of the Chagos Archipelagos. When you dive into the beauty underneath this aqua-realm of Chagos, you can find them as disk-shaped folia type or globular mass that could be as massive as a rock. Generally, the folia type are greenish brown in colour but the sub-massive/massive ones could take a rich array of colour giving them a radiant of spectra of colour that glow.
           In case where they are threatened by global warming or other coral reef infestation, they bleach; losing their colour and appearing gloomy"), 
           "Fungia" = c("Fungia are mostly free-living form  hard coral found in virtually every part of the chagos island. They lie silently like dead rock but can be active even in extreme condition. They are easily identified by the present of a hairy-like body surface with a boral mouth that can be seen ventrally when scuba-diving. They are usually brownish, pink and bluish in colour except in case when they are bleached or diseased. ")
    )
  })
  
  # returned output rendered below
  output$pre_set <- renderText({
    return(pre_set_desc())
  })
  
  
  pic <- image_read("www/photo.png")
  output$brushedimage <- renderImage({
    tmpfile <- pic %>% image_resize("600x400!") %>% image_write(tempfile(fileext = 'jpg'), format = 'jpg')
    list(src = tmpfile, width = 600, height = 400)
  })
}