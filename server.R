

server <- function (input, output, session) {
  
  session$onSessionEnded(function() {
    stopApp()
  })
  
  output$user<- renderUser({
    dashboardUser(
      name = "SDAA Dashboard",
      image = "https://s28.q4cdn.com/781576035/files/images/PFE-ONC-Lockup_KO.png",
      title = NULL,
      subtitle = "Author - Mahesh Kulkarni",
      footer = NULL
    )
  })
  
  
  # Call the Data Load Module
  uploadedData <- Data_Load_server("upload_module")  # No need to use callModule
  
  print("Reactive Data")
  print(head(uploadedData, 10))
  
  # Call the Data Insights Module and pass the reactive data correctly
  Data_Insights_module("insights_module", uploadedData)
  Data_Insights_module_2("insights_module_2", uploadedData)
  Data_Insights_module_3("insights_module_3", uploadedData)
  Data_Insights_module_4("insights_module_4", uploadedData)
  Data_Insights_module_5("insights_module_5", uploadedData)
  
} 