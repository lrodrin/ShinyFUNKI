tabPanel(
  title="DoRothEA", value = "DoRothEA",
  # Row controlling the widgets
  fluidRow(
    column(6, align = "center",
      sidebarLayout(
        sidebarPanel(
          width = 12,
          uiOutput("select_contrast_dorothea"),
          uiOutput("select_tf"),
          downloadButton(
            "download_dorothea_analysis",
            "Download DoRothEA scores and figures"
          ),
        ),
        mainPanel(width = 0)
      )
    ),
    
    column(
      6,
      sidebarLayout(
        sidebarPanel(
          width = 12,
          uiOutput("select_top_n_hits"),
          uiOutput("select_top_n_labels")
        ),
        mainPanel(width = 0)
      )
    )
  ),
  hr(),
  
  fluidRow(
    column(4, plotly::plotlyOutput("tf_bar")),
    column(4, plotly::plotlyOutput("barplot_nes_dorothea")),
    column(4, visNetworkOutput("tf_network"))
  ),
  
  hr(),
  
  # Row with static heatmap
  fluidRow(plotly::plotlyOutput("heatmap_dorothea")),
  
  hr(),
  
  # Table visualization
  DT::dataTableOutput("dorothea_table")
)
    
