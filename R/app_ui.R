#' The application User-Interface
#' 
#' @param request Internal parameter for `{shiny}`. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_ui <- function(request) {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # Your application UI logic 
    ### the default ui
    # fluidPage(
    #   h1("titanmockup")
    # )
    
    ### seeing if we can open an html template
    htmlTemplate(
      filename = "inst/app/www/about1.html"
      # #"www/index.html",
      # blog_counter = count_icon_ui("blog_counter", icon = "icon-browser", icon_text = "Articles"),
      # author_counter = count_icon_ui("author_counter", icon = "icon-profile-female", icon_text = "Authors"),
      # word_counter = count_icon_ui("word_counter", icon = "icon-search", icon_text = "Words"),
      # page_counter = count_icon_ui("page_counter", icon = "icon-book-open", icon_text = "Equivalent Book Pages"),
      # insights_charts = insights_charts_ui("insights_charts"),
      # last_refresh = uiOutput("last_refresh"),
      # topics_graph = topics_graph_ui("topics_graph"),
      # topics_table = topics_table_ui("topics_table")
      
      # box_packages_new_month = pretty_value_box_ui("packages-new-month", icon_name = "cubes"),
      # box_packages_updated_month = pretty_value_box_ui("packages-updated-month", background_color = "#7ab885", icon_name = "cubes"),
      #
      # box_packages_new_year = pretty_value_box_ui("packages-new-year", icon_name = "cubes"),
      # box_packages_updated_year = pretty_value_box_ui("packages-updated-year", background_color = "#7ab885", icon_name = "cubes"),
      #
      # header_ui = uiOutput("header_ui") %>% withSpinner(size = 0.5, proxy.height = "50px", type = 6, color = "#FFFFFF"),
      #
      # package_chart = package_chart_ui("package_chart"),
      #
      # featured_packages = featured_packages_ui("featured_packages"),
      #
      # dependency_network = graph_network_ui("dependency_network")
    )
  )
}

#' Add external Resources to the Application
#' 
#' This function is internally used to add external 
#' resources inside the Shiny application. 
#' 
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function(){
  
  add_resource_path(
    'www', app_sys('app/www')
  )
 
  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys('app/www'),
      app_title = 'titanmockup'
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert() 
  )
}

