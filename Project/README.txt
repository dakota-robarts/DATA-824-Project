This README.txt file was generated on 20210721 by Dakota Robarts
Author email: drobarts@kumc.edu

This app was created for those who are interested in looking for Peroxisome proliferator-activated receptor alpha or PPARa regulated genes. 

-------------------
GENERAL INFORMATION
-------------------

1. What is PPARa?
Peroxisome proliferator-activated receptor alpha or PPARa is a nuclear receptor that is highly expressed in rodent liver, particularly the
hepatocytes. As a nuclear receptor, PPARa has multiple ligands that can stimulate its activation. The endogenous ligands or stimulants for PPARa
are thought to be long-chain fatty acids (FAs) or eicosanoids. This is important to note, chemicals that are structurally similar to the
endogenous ligands are known to activate PPARa, such as phthalates, plasticizes and a chemical class call per- and polyfluoroalkyl substances
(PFAS). These cause PPARa to translocate into the nucleus upregulating genes important for lipid metabolism and proliferation.

2. Why is PPARa target genes important to know?
When looking at adverse outcome pathways (AOPs) in humans, PPARa is considered an irrelevant mechanism due to that the expression level and
activity is very minimum. However, in rodents, PPARa is highly expressed and induces hepatocyte proliferation upon activation. One method to
access chemical safety is to test the chemicals in rodent models. However, it is important to exclude human irrelevant mechanisms in rodents
during this process. With this being said, it is important to know the PPARa target genes to remove those effects from the chemical assessment
process in rodents.

3. What does this Shiny do?
This shiny was created to help identify genes that are regulated by PPARa in rodents. This allows the user to search for their gene of interest
to determine if the genes of interest are regulated by PPARa. The ultimate goal is to help determine human significant AOPs in chemical screens.

4. How do you use this Shiny?
To use this shiny application, simply run the application in R using the function runApp(). This will open the graphical user interface, type the
gene of interest without spaces. The program will search for that gene in a list that was found to be PPARa dependently regulated genes and
produce a plot for 4 different comparisons. From these comparisons, PPARa dependent genes can be determined. If no gene appears, the gene is not
determined to be a PPARa dependent genes. Cyp2b10 or Cpt1a are two examples of PPAra dependent genes.

---------------------
DATA & FILE OVERVIEW
---------------------

1. About this data.
This microarray data was downloaded from the GEO database (GEO:GSE8295). The oringal paper associated with this dataset is DOI: 10.4137/BBI.S9529
(PMID: 22783064). Four groups were used wild type (WT) and PPARa Knockout (PPARa-KO) mice treated with and without the chemical WY146443 (potent
PPARa agonist) for 5 days. 

2. Analysis of Raw Data
The data was analyized using the GUI provided by GEO (GEO2R). 

3. Data Files
The file dat_2.RDS contains the significant differential expressed (DE) genes that were found to overlap between the inverse direction (up or down
regulated) in PPARa-KO WY14543 treated vs WT WT14543 treated and WT WT14543 vs WT Untreated for a total of 2,068 PPARa dependent genes. This
comparsion demenstrates the genes that are dependent of PPARa and are the genes that this application allows you to search for.

4. Shiny Files
The file server.R contains the code that runs the search and graphing algarithm. The ui.R file contains the graphics code that produces the GUI of 
the application. The folder www contains the embedded venn diagram image. 

5. Screenshot
The Image Example_Image.JPG is a screenshot of a functional gene search within the application. Here it shows the gene Cpt1a, a very well gene known
to be regulated by PPARa. When the mice are treated with the agonist WY14543, the expression of Cpt1a is significantly increased, however, when you 
give WY14543 to PPARa-KO mice, the induction of Cpt1a is lost indicating PPARa dependency.
