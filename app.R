library(shiny)


ui <- shinyMobile::f7Page(
  title = paste0("F1 Comparison Tool"),
  options = list(dark = T),
  shinyMobile::f7SingleLayout(
    navbar = shinyMobile::f7Navbar(
      title = "F1 Comparison Tool"
    )
  )
)

server <- function(input, output){

}


shinyApp(ui = ui, server = server)

