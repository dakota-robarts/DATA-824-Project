ui <- fluidPage(
  titlePanel(strong("Rodent PPARa Dependent Genes")),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Use this to show Rodent PPARa dependent genes."),
      textInput("gene", 
                label = "Choose a gene to display",
                placeholder = "Type gene name here (e.g. Cyp2b10)"),
      br(),
      h2(strong("Genes within the PPARa Gene Signature")),
      img(src = "venn.png", height = 500, width = 500),
      h4("Genes considered PPARa dependent genes are the genes 
         overlapping in the PPARa-KO WY14543 vs WT WT14543 and WT WT14543 vs WT Untreated that are inversely related. 
         These are the regions in the Venn Diagram that contain 1,269 and 799 genes. This is a total of 2,068 PPARa 
         dependent genes.
         ")
    ),
    
    mainPanel(
      mainPanel(
        h1(textOutput("selected_var")),
        plotOutput("plot"),
        h4("Red lines represent a Fold Change of 2 and -2. For a PPARa 
         dependent gene, the comparisons of PPARa-KO WY14543 vs WT WY14543 and WT WY14543 vs WT UT
         should be inversely proportional. If the graph does not appear, that gene is not a PPARa target gene."),
        h5("Data was taken from the", a("GSE8295",href="https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE8295"),"dataset and
         analyzed with GEO2R.")
      )
    )
  )
)
