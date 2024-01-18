dashboardPage(
  dashboardHeader(disable=T),
  dashboardSidebar(disable=T),
  
  dashboardBody(
    # set background to white
    setBackgroundColor(color = "#FFFFFF", shinydashboard = FALSE),
    setBackgroundColor(color = "#FFFFFF", shinydashboard = TRUE),
    tags$head(
      tags$link(rel = "shortcut icon", href = "Good-logo.ico")
    ),
    navbarPage(title=div(img(id="logo", src="Good logo.png", style="width:8%;height:10%; position:relative;display:right-align;margin-top:-10px;")),
               theme = shinytheme("lumen"),
               windowTitle = "Saudi Arabia Population",
               tabPanel("عربي",
                        fluidRow(
                          column(width = 8, align = "center", offset = 2 , plotlyOutput("plot1"))),
                        br(),
                        fluidRow(
                          column(width = 12, align = "center",
                                 p("من عام 2010 حتى 2022 كان عدد سكان المناطق الرئيسية (الرياض - مكة المكرمة - المنطقة الشرقية) هو الأعلى بشكل ملحوظ بالنسبة للمناطق الأخرى، ثم تليها (المدينة المنورة - عسير - جازان  - القصيم) حيث كان عدد سكانها يتأرجح بين المليون والمليونين، ثم تليها بقية المناطق التي لم يتجاوز عدد سكانها المليون
"))
                        ),
                        hr(),
                        fluidRow(column(width = 2,align = "right", offset = 10,
                                        tags$a(img(src = "website.png",style = "width:85%;height:85%;"),href = "https://portal.saudicensus.sa/portal", target="_blank"),
                        p("يهدف التعداد إلى توفير إحصاءات كاملة ودقيقة عن السكان علاوة على معلومات عن المساكن في جميع مناطق المملكة العربية السعودية والفئات الفرعية للسكان
",style = "text-align: justify;direction:rtl;")))
               ),
               tabPanel("English",
                               fluidRow(
                                 column(width = 8, align = "center", offset = 2 , plotlyOutput("plot2"))),
                        br(),
                        fluidRow(
                          column(width = 12, align = "center",
                                 p("Between 2010 and 2022, the population of the main regions of Saoudi Arabia (Riyadh - Makkah - Eastern Province) was the largest compared to the other regions, followed by the population of the regions (AL Madinah AL Munawwarah - Asir - Jazan - Al-Qassim) which was fluctuating between 1 million and 2 million people. Lastly the remaining regions’ population didn’t go above 1 million people during this period."))
                        ),
                        hr(),
                        fluidRow(column(width = 2,
                                        tags$a(img(src = "website.png",style = "width:85%;height:85%;"),href = "https://portal.saudicensus.sa/portal", target="_blank"),
                        p("A comprehensive census is designed to provide a complete and accurate count of the population along with information on housing, across all locations in the Kingdom and sub-groups of the population.
",style = "text-align: justify;")))
                        )
               ),
    fluidRow(
      column(width = 1,align = "right", offset = 4,
                    tags$a(img(src = "GitHub.png",style = "width:30%;height:30%;"),href = "https://github.com/0abdullah0sami0", target="_blank")),
      column(width = 1,align = "center", offset = 0,
             tags$a(img(src = "LinkedIn.png",style = "width:30%;height:30%;"),href = "https://www.linkedin.com/in/abdullahalshalaan/", target="_blank")),
      column(width = 1,align = "left", offset = 0,
             tags$a(img(src = "twittter.jpeg",style = "width:30%;height:30%;"),href = "https://twitter.com/HR02030", target="_blank"))
      ))
    )
