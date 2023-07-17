library(shiny)


ui <- shinyMobile::f7Page(
  title = paste0("F1 Comparison Tool"),
  options = list(dark = T),
  shinyMobile::f7SingleLayout(
    tags$head(
      tags$link(rel = "stylesheet", type = "text/css", href = "stylesheet_f1.css"),
    ),
    navbar = shinyMobile::f7Navbar(
      title = "F1 Comparison Tool"
    ),
    tags$div(
      id = 'main',
      tags$div(
        class = 'full',
        img(src='f1logo.png', align = "left", width = "10%"),
        tags$div(
          class = 'race_name',
          shinyMobile::f7SmartSelect(
            inputId = 'race',
            label = '',
            choices = c('23'),
            openIn = 'sheet'
          )
        )
      ),
      tags$div(
        class = 'driver_info',
        tags$div(
          class = 'driver'
        ),
        tags$div(
          class = 'map'
        ),
        tags$div(
          class = 'driver'
        ),
      ),
      tags$div(
        class = 'plot',
        tags$div(
          class = 'plot1'
        ),
        tags$div(
          class = 'plot2'
        )
      )
    )
  )
)

server <- function(input, output){

}


shinyApp(ui = ui, server = server)

