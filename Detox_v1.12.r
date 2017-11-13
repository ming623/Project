##Detox v1.11
#Used xlsx package to read in excel detox data ver 36 directly. 
# v1.10 --> v1.11
# Boxplot and barplot done
# stacked barcharts with genes/pseudos side by side UNDONE.

##excel ver is 36.

################################################################################
#                   Barplot of GST classes                       
################################################################################

setwd("~/detoxification/excel_file/AllgeneAllpseudo")
library(xlsx)
detox.gene.df <- read.xlsx("AllgenesAllpseudo_v36.xlsx", sheetIndex = 1,
                           header = TRUE, endRow = 385, stringsAsFactors = FALSE)
detox.pseudo.df <- read.xlsx("AllgenesAllpseudo_v36.xlsx", sheetIndex = 2,
                             header = TRUE, endRow = 301, stringsAsFactors = FALSE)
detox.partial.df <- read.xlsx("AllgenesAllpseudo_v36.xlsx", sheetIndex = 3,
                              header = TRUE, endRow = 42, stringsAsFactors = FALSE)

Spp.class <- table(detox.gene.df$Species,detox.gene.df$Class)
Spp.class <- as.data.frame(unclass(Spp.class))

pseudo_Spp.class <- table(detox.pseudo.df$Species,detox.pseudo.df$Class)
pseudo_Spp.class <- as.data.frame(unclass(pseudo_Spp.class))

partial_Spp.class <- table(detox.partial.df$Species,detox.partial.df$Class)
partial_Spp.class <- as.data.frame(unclass(partial_Spp.class))

Spp.class <- Spp.class[c(9,18,8,20,15,11,10,19,5,2,14,21,12,16,3,7,6,17,4,1,22,13),]

pseudo_Spp.class <- pseudo_Spp.class[c(9,18,8,20,15,11,10,19,5,2,14,21,12,16,3,7,6,17,4,1,22,13),]

row.names(Spp.class) <- c("Hsap","Ptro","Ggor","Pabe","Nleu","Mmul","Mfas","Panu","Csab",
                          "Cjac","Mmus","Rnor","Moch","Ocun","Clup","Fcat","Ecab","Oari",
                          "Chir","Btau","Sscr","Mdom")

row.names(pseudo_Spp.class) <- c("Hsap","Ptro","Ggor","Pabe","Nleu","Mmul","Mfas","Panu","Csab",
                                 "Cjac","Mmus","Rnor","Moch","Ocun","Clup","Fcat","Ecab","Oari",
                                 "Chir","Btau","Sscr","Mdom")
#barplot for gene and pseudogene
png("Detox_gene_pseudo_barplot.png")
par(mfrow = c(2,1))
barplot(t(Spp.class),col = c("blue","red","green","purple","cyan","orange"),
        las = 2,cex.axis = 0.8, ylim=c(0,40),ylab = "Number of genes")
##mtext("Species",1,3.5)
legend(1,40,c("alpha","mu","omega","pi","theta","zeta"),pch=15, cex = 0.8,
       col = c("blue","red","green","purple","cyan","orange"),bty="n", 
       x.intersp = 0.5, horiz = TRUE)
barplot(t(pseudo_Spp.class),col = c("blue","red","green","purple","cyan","orange"),
        las = 2,cex.axis = 0.8, ylim=c(0,40),ylab = "Number of pseudogenes")
##mtext("Species",1,3.5)
dev.off()

library(dplyr)
detox.gene.df <- tbl_df(detox.gene.df)
detox.pseudo.df <- tbl_df(detox.pseudo.df)
detox.partial.df <- tbl_df(detox.partial.df)

detox.gene.df <- detox.gene.df %>% mutate(category = rep("gene",384))
detox.partial.df <- detox.partial.df %>% mutate(category = rep("partial",41))
detox.merged <- merge(detox.gene.df,detox.partial.df, all = TRUE)

Spp.class.merged <- table(detox.merged$Species,detox.merged$Class)
Spp.class.merged <- as.data.frame(unclass(Spp.class.merged))

Spp.class.merged <- Spp.class.merged[c(9,18,8,20,15,11,10,19,5,2,14,21,12,16,3,7,6,17,4,1,22,13),]

row.names(Spp.class.merged) <- c("Hsap","Ptro","Ggor","Pabe","Nleu","Mmul","Mfas","Panu","Csab",
                                 "Cjac","Mmus","Rnor","Moch","Ocun","Clup","Fcat","Ecab","Oari",
                                 "Chir","Btau","Sscr","Mdom")
#barplot for gene_partial and pseudogene
##png("Detox_gene_partial_pseudo_barplot.png")
library(extrafont)
loadfonts(device = "postscript")
postscript("Detox_gene_partial_pseudo_barplot.eps", width = 789 , height = 500, onefile = TRUE, horizontal = FALSE)
op <- par(mfrow = c(2,1),oma = c(3.5,2,1,1),mar = c(1,2,2,2)+0.1)
barplot(t(Spp.class.merged),col = c("blue","red","green","purple","cyan","orange"),
        las = 2,cex.axis = 0.8, ylim=c(0,40),ylab = "Number of genes")
##mtext("Species",1,3.5)
legend(1,40,c("alpha","mu","omega","pi","theta","zeta"),pch=15,
       col = c("blue","red","green","purple","cyan","orange"),bty="n", 
       x.intersp = 0.5, horiz = TRUE)
barplot(t(pseudo_Spp.class),col = c("blue","red","green","purple","cyan","orange"),
        las = 2,cex.axis = 0.8, ylim=c(0,40),ylab = "Number of pseudogenes")
##mtext("Species",1,3.5)
##savePlot(filename = "Detox_gene_partial_pseudo_barplot.png", type = "png",
         ##device = dev.cur())
par(op)
dev.off()
#boxplot
loadfonts(device = "postscript")
postscript("Detox_boxplot.eps", width = 789 , height = 500, onefile = TRUE, horizontal = FALSE)
##png("Detox_boxplot.png")
par(mfrow=c(1,1))
colors = c(rep("Green",1),rep("red",1),rep("Blue",1),rep("Yellow",1))
boxplot(Spp.class$alpha,Spp.class$mu,Spp.class$theta,
        Spp.class$pi,Spp.class$omega,Spp.class$zeta,
        names=c("Alpha","Mu","Theta","Pi","Omega","Zeta"),col=colors,
        xlab="Gene classes", ylab="Number of genes")
mtext("Detoxification",side = 3, line = 1,at = 2)
mtext("Biosynthesis",side = 3, line = 1,at = 5.5)

abline(v = 4.5 , col ="red", lwd= 2)
dev.off()
