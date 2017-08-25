#Using chrregion as input, calculate merged fragment to obtain
#need to setwd to directory with chrregion and Getfragmentsize_v1.R
#version 1 failed at getting the breakpoints of multiple rows in each chr
#version 2 attempts to resolve problems in version 1 but unsuccessful
#see problems inside finaldf, it's only partially right at this stage 
#version 3 has a different idea by using a vector to store the breakpts
#version 3 works. Need to test with the dog file. Also, the logic behind 
#storing a fragment that is more than fragment size immediately needs further thought
#TODO: Make this into a function
#version 4: turn this into a function

getRegionMergeGap <- function(chrregion,gapSize) {
  
#maindf to hold the chrregion
maindf <- read.table(chrregion,sep="\t")

#Find unique chromosomes and store in chr.uniq character vector
allchr <- maindf[,1]
chr.uniq <- as.character(unique(sort(allchr)))

#Create an empty dataframe to store final results in below format
#Col1 = chr, col2 = merge_start, col3 = merge_end
final.df <- data.frame(chr=character(),start=integer(),end=integer())

#Looping through each chromosome
for (i in 1:length(chr.uniq)) {
  #extract row(s) that corresponds each chromosome in maindf to hold1.df
  each.chr <- maindf[,1] == chr.uniq[i]
  hold1.df <- maindf[each.chr,]
  #create vectors start and end to put in all the starts and ends, respectively
  start <- hold1.df[,2]; end <- hold1.df[,3]

#If the chromosome has only 1 fragment (i.e 1 row), then append this fragment 
#to final.df and end here, go to the next chromosome
  if(length(start) == 1) {
    starting <- start[1]; ending <- end[1]
    dummy.df <- data.frame(chr=chr.uniq[i],start=starting,end=ending)
    final.df <- rbind(final.df,dummy.df) 
  }
#elseif the chromosome has multiple fragments,
#Looping through each fragment
  else {
    vect.line <- c()
    vect.hold2 <- c()
  for (j in 1:length(start)){
    #if the individual fragment is > fragmentsize wanted, append to the final.df
    if(end[j] - start[j] > gapSize) {
      starting <- start[j]; ending <- end[j]
      dummy.df <- data.frame(chr=chr.uniq[i],start=starting,end=ending)
      final.df <- rbind(final.df,dummy.df)
    } #end of 2nd if
    else {
      #else store the individual line number as a vector to make a new df later
      t <- TRUE
      vect.line <- c(vect.line,t)
    }
  } #end of looping chromosome with multiple fragments
  #After looping all fragments, make new df based on the vector corresponding 
  #to line with fragment < fragment size
  hold2.df <- hold1.df[vect.line,]
  #Store start1, end1, start2, end2 etc in a vector
  start2 <- hold2.df[,2]; end2 <- hold2.df[,3]
  
  for (k in 1:length(start2)){
    vect.hold2 <- c(vect.hold2,start2[k],end2[k])
  }
  #create a vector with two elements c(start1, end(N))
  vect.final <- c(vect.hold2[1],vect.hold2[length(vect.hold2)])
  #Check for breakpt and if found, modify the vector
  #based on the number of elements in the vector, loop through to append 
  #new line to final.df
  vect.half <- length(vect.hold2)/2
  seed <- 1
  for (l in 1:vect.half) {
    #if breakpoint is found, modify the vector
    double <- seq(2,length(vect.hold2),2)
    if (vect.hold2[double[l]] - vect.hold2[seed] < gapSize) {
    }
    else {
    double.minus1 <- double[l] -1; double.minus2 <- double[l] - 2
    vect.final <- append(vect.final,c(vect.hold2[double.minus2],vect.hold2[double.minus1]),after = length(vect.final)-1)
    seed <- double.minus1
    }
  }
  V <- length(vect.final)/2
  matrx <- matrix(vect.final,V,2,byrow=TRUE)
  matrx.df <- as.data.frame(matrx)
  colnames(matrx.df) <- c("start","end")
  matrx.df$chr <- rep(chr.uniq[i],V)
  matrx.df <- matrx.df[c(3,1,2)]
  final.df <- rbind(final.df,matrx.df)
  } #end of first else
}

write.table(final.df,file="chrregion_chosen",sep = "\t")

} # close function