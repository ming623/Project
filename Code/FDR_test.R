library(xlsx)
setwd("~/positiveSelection")
FDR <- read.xlsx(file = "FDR_test.xlsx", sheetIndex = 1,
                 header = TRUE, endRow = 22, stringsAsFactors = FALSE)
FDR <- FDR[order(FDR$P.value),]
FDR$FDR_value <- p.adjust(FDR$P.value, method = "fdr")
FDR$Benferroni_value <- p.adjust(FDR$P.value, method = "bonferroni")
write.xlsx(FDR,"FDR_result.xlsx",sheetName = "Sheet1",
           col.names = TRUE, row.names = TRUE, append = FALSE,showNA = TRUE)
