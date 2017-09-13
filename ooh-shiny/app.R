# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above or by typing runApp(<appDirName>) in the console.
# Find out more about building applications with Shiny here:
#    http://shiny.rstudio.com/
#

library(shiny)

# Define the ui object (i.e. what the layout looks like)
ui <- fluidPage(
    titlePanel("My First Shiny App - Exploring HTML tags"),
    sidebarLayout(
        sidebarPanel(
            p("You can include an image using the img() function. The image source must
              be in a folder named", code("www"), "inside the app folder."),
            img(src = "rstudio.png", height = 35, width = 100)
        ),
        mainPanel(
            p("Shiny includes many tag functions that replicate HTML5 equivalent
              tags, including the following options with convenient wrapper functions:"),
            h3("h3() creates a level 3 header (h1...h6 allowed)"),
            p("p() creates a new paragraph of text."),
            p("A new p() command starts a new paragraph. Supply a style attribute 
              (in this case, 'style = font-family:'times'; font-si16pt')
              to change the format of the entire paragraph.",
              style = "font-family: 'times'; font-si16pt"),
            strong("strong() makes bold text."),
            em("em() creates italicized (i.e, emphasized) text."),
            p("br() by itself creates a line break when needed."),
            code("code() displays your text similar to computer code"),
            p("You can insert a", code("pseudo code chunk"), "inline using 
              a p(string, code(string), string) format."),
            div("div() creates segments of text with a similar style. 
                This division of text is all blue because I passed the argument 
                'style = color:blue' to div()", style = "color:blue"),
            p("span() does the same thing as div(), but it works with",
              span("groups of words", style = "color:blue"),
              "that appear inside a paragraph."),
            p("Note that you can run any of these functions directly in the console
              and see that the output actually produced is HTML code."),
            h3("Other tags"),
            p("This page covers the most popular Shiny tag functions, but there
              are many more tag functions for you to use. You can learn about 
              additional tag functions in ", 
                a("Customize your UI with HTML", 
                  href = "http://shiny.rstudio.com/articles/html-tags.html"),
              " and the ",
                a("Shiny HTML Tags Glossary.",
                  href = "http://shiny.rstudio.com/articles/tag-glossary.html"))
        )
    )
)

# Define server logic to create the page
server <- function(input, output) {

}

# Run the application 
shinyApp(ui = ui, server = server)

