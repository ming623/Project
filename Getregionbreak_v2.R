#Getting blast hits mapping to chr starting with bltnm8 file
#Need to setwd() to the directory containing bltnm8 file

#df1 is the bltnm8 table
df1 <- read.table("NorthernWhiteCheekedGibbonSubregion_GST.bltnm8",sep="\t")

#df2 is extracted dataframe of col2 = chromosome, col9 = start, col10 = end
df2 <- df1[,c(2,9,10)]

#Find unique chromosomes and store in chr.uniq character vector
allchr <- df2[,1]
chr.uniq <- as.character(unique(sort(allchr)))

#Create an empty dataframe to store final results in below format
#Col1 = chr, col2 = non_overlap_start, col3 = non_overlap_end
df4 <- data.frame(chr=character(),start=integer(),end=integer())

#For each unique chromosome, put values of non_overlapping start(s) and end(s)
#to col2 and col3, respectively.

for (i in 1:length(chr.uniq)) {
  #extract row(s) that corresponds each chromosome in df2 to df3
  each.chr <- df2[,1] == chr.uniq[i]
  df3 <- df2[each.chr,]
  #create vectors start and end to put in all the starts and ends, respectively
  start <- df3[,2]
  end <- df3[,3]
  #get all unique coordinates
  y <- c()
  for (j in 1:length(start)){
    vect <- start[j]:end[j]
    y <- c(y,vect)
  }
  y.uniq <- unique(sort(y))
  #Identify breakpts in y.uniq
  one <- as.integer(1)
  break.pstn <- c(y.uniq[1],y.uniq[length(y.uniq)]) #At least one break from this chr
  n <- as.integer(1)
  for (k in 1:(length(y.uniq)-1)) {
    test <- y.uniq[k+1] - y.uniq[k]
    if (identical(test,one)){
      
    } else {
      l <- 2*n - 1
      break.pstn <- append(break.pstn,c(y.uniq[k],y.uniq[k+1]),l)
      n <- n + 1
    }
  }
  #Create a new dataframe df5 to save each chr regions
  V <- length(break.pstn)/2
  matrx <- matrix(break.pstn,V,2,byrow=TRUE)
  matrx.df <- as.data.frame(matrx)
  colnames(matrx.df) <- c("start","end")
  matrx.df$chr <- rep(chr.uniq[i],V)
  matrx.df <- matrx.df[c(3,1,2)]
  #df4 <- data.frame(chr=character(),start=integer(),end=integer())
  #row bind result of breakpt to df4
  df4 <- rbind(df4,matrx.df)
}

write.table(df4,file="NorthernWhiteCheekedGibbonregion",sep = "\t")