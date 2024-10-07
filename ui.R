ui <- bs4DashPage(
  # Link the CSS file
  preloader = list(html = tagList(spin_flower(), "Loading ..."), color = "#000485"),
  
  dark = FALSE,
  help = NULL,
  header = dashboardHeader(
    title = img(src = "https://s28.q4cdn.com/781576035/files/images/PFE-ONC-Lockup_KO.png", width = "145px", style = "margin-left: 3px; margin-top: 1px;"),  # Add your custom logo,  # Set title to NULL to remove the default title
    
    fixed = TRUE,
    
    navbarMenu(id = "navmenu", 
               navbarTab(tabName = "Tab1", text = "Load Data"),
               navbarTab(tabName = "Tab2", text = "Data Insights"),
               navbarTab(tabName = "Tab3", text = "Data Insights 02"),
               navbarTab(tabName = "Tab4", text = "Data Insights 03"),
               navbarTab(tabName = "Tab5", text = "Data Insights 04"),
               navbarTab(tabName = "Tab6", text = "Data Insights 05")
               
    ),
    
    rightUi = userOutput("user")
  ),
  
  sidebar = dashboardSidebar(disable = TRUE),
  
  body = dashboardBody(
    
    tabItems(
      tabItem(tabName = "Tab1",Data_Load_UI("upload_module")),
      tabItem(tabName = "Tab2", Data_Insights_UI("insights_module")),
      tabItem(tabName = "Tab3", Data_Insights_UI_2("insights_module_2")),
      tabItem(tabName = "Tab4", Data_Insights_UI_3("insights_module_3")),
      tabItem(tabName = "Tab5", Data_Insights_UI_4("insights_module_4")),
      tabItem(tabName = "Tab6", Data_Insights_UI_5("insights_module_5"))
    ),
    
    footer = dashboardFooter(
      fixed = FALSE,
      left = tagList(a(href="https://www.pfizer.com/profiles/pfecpfizercomus_pr…orate_helix/public/assets/images/logo-primary.svg", "by Pfizer")
      ),
      
      right = a("@Mahesh Kulkarni")
    ), 
    
    fullscreen = TRUE,
    
    htmltools::includeCSS(path = "www/pdash.css")
  )
  
) 