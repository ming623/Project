## Use genoPlot to generate gene synteny
## 16/8/17 - start with human genome first
install.packages("genoPlotR")
library(genoPlotR)
#load feature of the chromosome from genbank
Human_chr <- read_dna_seg_from_file("~/detoxification/Analysis_in_R/genoplotR/humanchr6_51687927_53995380.gb")
unique(Human_chr$name)
# extract specific neighbour gene and gene name 
Human_Alpha <- Human_chr[Human_chr$name %in% c("FBXO9","ICK","GSTA4","GSTA3","GSTA5","GSTA1","GSTA2","TMEM14A","TRAM2"),]
# extract specific column
df1<- Human_Alpha[,c(1,2,3,4,12,13,14,15,16,17)]
df1$gene_type <- c("arrows")
#Group by name,strand and colour
Human_Alpha_start<- aggregate (start ~ name+strand+col,df1,min)
Human_Alpha_end<- aggregate (end ~ name+strand+col,df1,max)
#merge table
Human_Alpha_Gene <- merge(Human_Alpha_start,Human_Alpha_end, by = c("name","strand","col"))
Human_Alpha_Gene$col <- c("red", "blue", "green", "purple", "yellow", "pink", "orange", "brown", "violet")
Human_Alpha_Gene <- Human_Alpha_Gene[c("name","start","end","strand","col")]
##pseudogene
Human_Alpha_Gene[nrow(Human_Alpha_Gene) + 1 ,] <- c("GSTA6P","1117520","1125536","-1","white")
Human_Alpha_Gene[nrow(Human_Alpha_Gene) + 1 ,] <- c("GSTA10P","1185088","1202872","-1","white")
Human_Alpha_Gene[nrow(Human_Alpha_Gene) + 1 ,] <- c("GSTA7P","1051537","1057233","-1","white")
Human_Alpha_Gene[nrow(Human_Alpha_Gene) + 1 ,] <- c("GSTA9P","1251981","1269596","-1","white")
Human_Alpha_Gene[nrow(Human_Alpha_Gene) + 1 ,] <- c("GSTA8P","1000019","1009189","-1","white")
Human_Alpha_Gene[nrow(Human_Alpha_Gene) + 1 ,] <- c("GSTA12P","1077354","1090429","-1","white")
Human_Alpha_Gene[nrow(Human_Alpha_Gene) + 1 ,] <- c("GSTA11P","1159818","1182432","-1","white")
Human_Alpha_Gene[nrow(Human_Alpha_Gene) + 1 ,] <- c("Pseudo","2409904","2439904","-1","white")
Human_Alpha_Gene[,2] = as.numeric(Human_Alpha_Gene[,2])
Human_Alpha_Gene[,3] = as.numeric(Human_Alpha_Gene[,3])
Human_Alpha_Gene[,4] = as.numeric(Human_Alpha_Gene[,4])
Human_Alpha_Gene_chr <- dna_seg(Human_Alpha_Gene)
##annotate with gene name
ann_Human_chr <- annotation(x1=middle(Human_Alpha_Gene_chr), text=Human_Alpha_Gene_chr$name)

##species 2
Chimp_chr <- read_dna_seg_from_file("~/detoxification/Analysis_in_R/genoplotR/chimpanzeechr6_52409122_54723128.gb")
unique(Chimp_chr$name)
Chimp_Alpha <- Chimp_chr[Chimp_chr$name %in% c("FBXO9","ICK","LOC462769","LOC100611543","LOC741887","LOC462770","GSTA4","TMEM14A","TRAM2"),]
df2<- Chimp_Alpha[,c(1,2,3,4,12,13,14,15,16,17)]
df2$gene_type[1:290] <- "arrows"
Chimp_Alpha_start<- aggregate (start ~ name+strand+col,df2,min)
Chimp_Alpha_end<- aggregate (end ~ name+strand+col,df2,max)
Chimp_Alpha_Gene <- merge(Chimp_Alpha_start,Chimp_Alpha_end, by = c("name","strand","col"))
Chimp_Alpha_Gene <- Chimp_Alpha_Gene[c("name","start","end","strand","col")]
Chimp_Alpha_Gene$col <- c("red", "yellow", "orange", "blue", "green", "purple", "pink", "brown", "violet")
##pseudogene
Chimp_Alpha_Gene[nrow(Chimp_Alpha_Gene) + 1 ,] <- c("GSTAP2","1000001","1009207","-1","white")
Chimp_Alpha_Gene[nrow(Chimp_Alpha_Gene) + 1 ,] <- c("GSTAP3","1052107","1054235","-1","white")
Chimp_Alpha_Gene[nrow(Chimp_Alpha_Gene) + 1 ,] <- c("LOC100611750","1078154","1091370","-1","white")
Chimp_Alpha_Gene[nrow(Chimp_Alpha_Gene) + 1 ,] <- c("LOC741926","1156719","1180014","-1","white")
Chimp_Alpha_Gene[nrow(Chimp_Alpha_Gene) + 1 ,] <- c("LOC100611934","1183734","1203239","-1","white")
Chimp_Alpha_Gene[nrow(Chimp_Alpha_Gene) + 1 ,] <- c("LOC104006866","1263896","1274043","-1","white")
Chimp_Alpha_Gene[nrow(Chimp_Alpha_Gene) + 1 ,] <- c("GSTAP1","1000001","1000654","-1","white")
Chimp_Alpha_Gene[,2] = as.numeric(Chimp_Alpha_Gene[,2])
Chimp_Alpha_Gene[,3] = as.numeric(Chimp_Alpha_Gene[,3])
Chimp_Alpha_Gene[,4] = as.numeric(Chimp_Alpha_Gene[,4])
Chimp_Alpha_Gene$name[4] <- "GSTA1"
Chimp_Alpha_Gene$name[5] <- "GSTA2"
Chimp_Alpha_Gene$name[6] <- "GSTA3"
Chimp_Alpha_Gene$name[7] <- "GSTA5"
Chimp_Alpha_Gene_chr <- dna_seg(Chimp_Alpha_Gene)
ann_Chimp_chr <- annotation(x1=middle(Chimp_Alpha_Gene_chr), text=Chimp_Alpha_Gene_chr$name)

## species 3
Gorilla_chr <- read_dna_seg_from_file("~/detoxification/Analysis_in_R/genoplotR/gorillachr6_53142737_55460394.gb")
unique(Gorilla_chr$name)
Gorilla_Alpha <- Gorilla_chr[Gorilla_chr$name %in% c("TRAM2","TMEM14A","LOC101148684","GSTA4","GSTA3","ICK","FBXO9"),]
df3<- Gorilla_Alpha[,c(1,2,3,4,12,13,14,15,16,17)]
df3$gene_type[1:184] <- "arrows"
Gorilla_Alpha_start<- aggregate (start ~ name+strand+col,df3,min)
Gorilla_Alpha_end<- aggregate (end ~ name+strand+col,df3,max)
Gorilla_Alpha_Gene <- merge(Gorilla_Alpha_start,Gorilla_Alpha_end, by = c("name","strand","col"))
Gorilla_Alpha_Gene <- Gorilla_Alpha_Gene[c("name","start","end","strand","col")]
Gorilla_Alpha_Gene$col <- c("red", "purple", "yellow", "orange", "blue", "brown", "violet")
Gorilla_Alpha_Gene[nrow(Gorilla_Alpha_Gene) + 1 ,] <- c("GSTAP2","1000001","1010041","-1","white")
Gorilla_Alpha_Gene[nrow(Gorilla_Alpha_Gene) + 1 ,] <- c("GSTAP3","1122864","1124016","-1","white")
Gorilla_Alpha_Gene[nrow(Gorilla_Alpha_Gene) + 1 ,] <- c("GSTAP4","1189565","1190766","-1","white")
Gorilla_Alpha_Gene[nrow(Gorilla_Alpha_Gene) + 1 ,] <- c("GSTAP5","1236004","1263387","-1","white")
Gorilla_Alpha_Gene[nrow(Gorilla_Alpha_Gene) + 1 ,] <- c("GSTAP6","1163407","1186816","-1","white")
Gorilla_Alpha_Gene[nrow(Gorilla_Alpha_Gene) + 1 ,] <- c("GSTAP1","1000001","1000654","-1","white")
Gorilla_Alpha_Gene[,2] = as.numeric(Gorilla_Alpha_Gene[,2])
Gorilla_Alpha_Gene[,3] = as.numeric(Gorilla_Alpha_Gene[,3])
Gorilla_Alpha_Gene[,4] = as.numeric(Gorilla_Alpha_Gene[,4])
Gorilla_Alpha_Gene$name[5] <- "GSTA1"
Gorilla_Alpha_Gene$name[2] <- "GSTA7"
Gorilla_Alpha_Gene_chr <- dna_seg(Gorilla_Alpha_Gene)
ann_Gorilla_chr <- annotation(x1=middle(Gorilla_Alpha_Gene_chr), text=Gorilla_Alpha_Gene_chr$name)

##species 4
OrangUtan_chr <- read_dna_seg_from_file("~/detoxification/Analysis_in_R/genoplotR/orangutanchr6_52048205_54393567.gb")
unique(OrangUtan_chr$name)
OrangUtan_Alpha <- OrangUtan_chr[OrangUtan_chr$name %in% c("TRAM2","TMEM14A","LOC100445078","LOC100445448","LOC100446578","GSTA4","ICK","FBXO9"),]
df4<- OrangUtan_Alpha[,c(1,2,3,4,12,13,14,15,16,17)]
df4$gene_type[1:220] <- "arrows"
OrangUtan_Alpha_start<- aggregate (start ~ name+strand+col,df4,min)
OrangUtan_Alpha_end<- aggregate (end ~ name+strand+col,df4,max)
OrangUtan_Alpha_Gene <- merge(OrangUtan_Alpha_start,OrangUtan_Alpha_end, by = c("name","strand","col"))
OrangUtan_Alpha_Gene <- OrangUtan_Alpha_Gene[c("name","start","end","strand","col")]
OrangUtan_Alpha_Gene$col <- c("red", "purple", "yellow", "orange", "blue", "brown", "violet","white")
OrangUtan_Alpha_Gene[nrow(OrangUtan_Alpha_Gene) + 1 ,] <- c("GSTAP5","1160183","1172144","-1","white")
OrangUtan_Alpha_Gene[nrow(OrangUtan_Alpha_Gene) + 1 ,] <- c("GSTAP4","1201378","1219246","-1","white")
OrangUtan_Alpha_Gene[nrow(OrangUtan_Alpha_Gene) + 1 ,] <- c("GSTAP2","1053607","1055733","-1","white")
OrangUtan_Alpha_Gene[nrow(OrangUtan_Alpha_Gene) + 1 ,] <- c("GSTAP5","1268830","1301943","-1","white")
OrangUtan_Alpha_Gene[nrow(OrangUtan_Alpha_Gene) + 1 ,] <- c("LOC100446214","1176136","1198714","-1","white")
OrangUtan_Alpha_Gene[nrow(OrangUtan_Alpha_Gene) + 1 ,] <- c("GSTAP1","999945","1000599","-1","white")
OrangUtan_Alpha_Gene[,2] = as.numeric(OrangUtan_Alpha_Gene[,2])
OrangUtan_Alpha_Gene[,3] = as.numeric(OrangUtan_Alpha_Gene[,3])
OrangUtan_Alpha_Gene[,4] = as.numeric(OrangUtan_Alpha_Gene[,4])
OrangUtan_Alpha_Gene$name[4] <- "GSTA4"
OrangUtan_Alpha_Gene$name[5] <- "GSTA1"
OrangUtan_Alpha_Gene$name[6] <- "GSTA5"
OrangUtan_Alpha_Gene_chr <- dna_seg(OrangUtan_Alpha_Gene)
ann_OrangUtan_chr <- annotation(x1=middle(OrangUtan_Alpha_Gene_chr), text=OrangUtan_Alpha_Gene_chr$name)

## species5
NWCG_chr <- read_dna_seg_from_file("~/detoxification/Analysis_in_R/genoplotR/NorthernWhiteCheekedGibbonchr22a_50619427_52800979.gb")
unique(NWCG_chr$name)
NWCG_Alpha <- NWCG_chr[NWCG_chr$name %in% c("TRAM2","TMEM14A","GSTA4","LOC100583757","LOC100584083","LOC100584415","ICK","FBXO9"),]
df5<- NWCG_Alpha[,c(1,2,3,4,12,13,14,15,16,17)]
df5$gene_type[1:239] <- "arrows"
NWCG_Alpha_start<- aggregate (start ~ name+strand+col,df5,min)
NWCG_Alpha_end<- aggregate (end ~ name+strand+col,df5,max)
NWCG_Alpha_Gene <- merge(NWCG_Alpha_start,NWCG_Alpha_end,by = c("name","strand","col"))
NWCG_Alpha_Gene <- NWCG_Alpha_Gene[c("name","start","end","strand","col")]
NWCG_Alpha_Gene$col <- c("red", "yellow","orange", "purple", "pink", "blue","brown","violet")
NWCG_Alpha_Gene[nrow(NWCG_Alpha_Gene) + 1 ,] <- c("GSTAP4","1059756","1068145","-1","white")
NWCG_Alpha_Gene[nrow(NWCG_Alpha_Gene) + 1 ,] <- c("GSTAP1","1165319","1181553","1","white")
NWCG_Alpha_Gene[nrow(NWCG_Alpha_Gene) + 1 ,] <- c("GSTAP2","1000001","1000641","-1","white")
NWCG_Alpha_Gene[nrow(NWCG_Alpha_Gene) + 1 ,] <- c("GSTAP3","1000001","1000449","-1","white")
NWCG_Alpha_Gene[,2] = as.numeric(NWCG_Alpha_Gene[,2])
NWCG_Alpha_Gene[,3] = as.numeric(NWCG_Alpha_Gene[,3])
NWCG_Alpha_Gene[,4] = as.numeric(NWCG_Alpha_Gene[,4])
NWCG_Alpha_Gene$name[4] <- "GSTA3"
NWCG_Alpha_Gene$name[5] <- "GSTA5"
NWCG_Alpha_Gene$name[6] <- "GSTA1"
NWCG_Alpha_Gene_chr <- reverse(dna_seg(NWCG_Alpha_Gene))
ann_NWCG_chr <- annotation(x1=middle(NWCG_Alpha_Gene_chr), text=NWCG_Alpha_Gene_chr$name)

##species6
## species 7


##species 8
Baboon_chr <- read_dna_seg_from_file("~/detoxification/Analysis_in_R/genoplotR/baboonchr4_50822043_53046566.gb")
unique(Baboon_chr$name)
Baboon_Alpha <- Baboon_chr[Baboon_chr$name %in% c("TRAM2","TMEM14A","LOC101002090","GSTA4","GSTA3","LOC101001730","GSTA1","FBXO9","ICK"),]
df8<- Baboon_Alpha[,c(1,2,3,4,12,13,14,15,16,17)]
df8$gene_type[1:127] <- "arrows"
Baboon_Alpha_start<- aggregate (start ~ name+strand+col,df8,min)
Baboon_Alpha_end<- aggregate (end ~ name+strand+col,df8,max)
Baboon_Alpha_Gene <- merge(Baboon_Alpha_start,Baboon_Alpha_end, by = c("name","strand","col"))
Baboon_Alpha_Gene <- Baboon_Alpha_Gene[c("name","start","end","strand","col")]
Baboon_Alpha_Gene$col <- c("red", "purple", "yellow", "orange", "blue", "brown", "violet")
Baboon_Alpha_Gene[nrow(Baboon_Alpha_Gene) + 1 ,] <- c("GSTAP2","990900","1007181","-1","white")
Baboon_Alpha_Gene[nrow(Baboon_Alpha_Gene) + 1 ,] <- c("GSTAP3","1051219","1058310","-1","white")
Baboon_Alpha_Gene[nrow(Baboon_Alpha_Gene) + 1 ,] <- c("GSTAP4","1085191","1090557","-1","white")
Baboon_Alpha_Gene[nrow(Baboon_Alpha_Gene) + 1 ,] <- c("GSTAP5","1122049","1131165","-1","white")
Baboon_Alpha_Gene[nrow(Baboon_Alpha_Gene) + 1 ,] <- c("GSTAP1","1000001","1000654","-1","white")
Baboon_Alpha_Gene[nrow(Baboon_Alpha_Gene) + 1 ,] <- c("GSTAP6","999935","1000253","1","white")
Baboon_Alpha_Gene[,2] = as.numeric(Baboon_Alpha_Gene[,2])
Baboon_Alpha_Gene[,3] = as.numeric(Baboon_Alpha_Gene[,3])
Baboon_Alpha_Gene[,4] = as.numeric(Baboon_Alpha_Gene[,4])
Baboon_Alpha_Gene$name[4] <- "GSTA3"
Baboon_Alpha_Gene$name[5] <- "GSTA2"
Baboon_Alpha_Gene_chr <- dna_seg(Baboon_Alpha_Gene)
ann_Baboon_chr <- annotation(x1=middle(Baboon_Alpha_Gene_chr), text=Baboon_Alpha_Gene_chr$name)

##species9
GreenMonkey_chr <- read_dna_seg_from_file("~/detoxification/Analysis_in_R/genoplotR/greenmonkeychr17_18575835_20813617.gb")
unique(GreenMonkey_chr$name)
GreenMonkey_Alpha <- GreenMonkey_chr[GreenMonkey_chr$name %in% c("FBXO9","ICK","GSTA4","LOC103221352","LOC103221358","LOC103221354","LOC103221353","GSTA5","TMEM14A","TRAM2"),]
df9<- GreenMonkey_Alpha[,c(1,2,3,4,12,13,14,15,16,17)]
df9$gene_type[1:324] <- "arrows"
GreenMonkey_Alpha_start<- aggregate (start ~ name+strand+col,df9,min)
GreenMonkey_Alpha_end<- aggregate (end ~ name+strand+col,df9,max)
GreenMonkey_Alpha_Gene <- merge(GreenMonkey_Alpha_start,GreenMonkey_Alpha_end, by = c("name","strand","col"))
GreenMonkey_Alpha_Gene <- GreenMonkey_Alpha_Gene[c("name","start","end","strand","col")]
GreenMonkey_Alpha_Gene$col <- c("red", "yellow", "orange", "blue", "green", "purple", "pink", "brown", "violet","white")
GreenMonkey_Alpha_Gene[nrow(GreenMonkey_Alpha_Gene) + 1 ,] <- c("GSTAP2","1000001","1010041","-1","white")
GreenMonkey_Alpha_Gene[nrow(GreenMonkey_Alpha_Gene) + 1 ,] <- c("GSTAP3","1122864","1124016","-1","white")
GreenMonkey_Alpha_Gene[nrow(GreenMonkey_Alpha_Gene) + 1 ,] <- c("GSTAP4","1189565","1190766","-1","white")
GreenMonkey_Alpha_Gene[nrow(GreenMonkey_Alpha_Gene) + 1 ,] <- c("GSTAP5","1236004","1263387","-1","white")
GreenMonkey_Alpha_Gene[nrow(GreenMonkey_Alpha_Gene) + 1 ,] <- c("GSTAP1","1000001","1000616","-1","white")
GreenMonkey_Alpha_Gene[nrow(GreenMonkey_Alpha_Gene) + 1 ,] <- c("GSTAP6","999998","1000250","-1","white")
GreenMonkey_Alpha_Gene[,2] = as.numeric(GreenMonkey_Alpha_Gene[,2])
GreenMonkey_Alpha_Gene[,3] = as.numeric(GreenMonkey_Alpha_Gene[,3])
GreenMonkey_Alpha_Gene[,4] = as.numeric(GreenMonkey_Alpha_Gene[,4])
GreenMonkey_Alpha_Gene$name[5] <- "GSTA4"
GreenMonkey_Alpha_Gene$name[6] <- "GSTA2"
GreenMonkey_Alpha_Gene$name[7] <- "GSTA1"
GreenMonkey_Alpha_Gene$name[8] <- "GSTA3"
GreenMonkey_Alpha_Gene_chr <- reverse(dna_seg(GreenMonkey_Alpha_Gene))
ann_GreenMonkey_chr <- annotation(x1=middle(GreenMonkey_Alpha_Gene_chr), text=GreenMonkey_Alpha_Gene_chr$name)

##species 10
Marmoset_chr <- read_dna_seg_from_file("~/detoxification/Analysis_in_R/genoplotR/WhiteTuftedEarMarmosetchr4_53035835_55170528.gb")
unique(Marmoset_chr$name)
Marmoset_Alpha <- Marmoset_chr[Marmoset_chr$name %in% c("FBXO9","ICK","GSTA4","LOC100386984","LOC100400731","LOC100401098","GSTA4","TMEM14A","TRAM2"),]
df10<- Marmoset_Alpha[,c(1,2,3,4,12,13,14,15,16,17)]
df10$gene_type[1:188] <- "arrows"
Marmoset_Alpha_start<- aggregate (start ~ name+strand+col,df10,min)
Marmoset_Alpha_end<- aggregate (end ~ name+strand+col,df10,max)
Marmoset_Alpha_Gene <- merge(Marmoset_Alpha_start,Marmoset_Alpha_end, by = c("name","strand","col"))
Marmoset_Alpha_Gene <- Marmoset_Alpha_Gene[c("name","start","end","strand","col")]
Marmoset_Alpha_Gene$col <- c("red", "yellow", "orange", "blue", "green", "purple", "pink", "brown")
Marmoset_Alpha_Gene[nrow(Marmoset_Alpha_Gene) + 1 ,] <- c("GSTAP1","1000001","1000159","-1","white")
Marmoset_Alpha_Gene[nrow(Marmoset_Alpha_Gene) + 1 ,] <- c("GSTAP2","1000001","1000591","-1","white")
Marmoset_Alpha_Gene[nrow(Marmoset_Alpha_Gene) + 1 ,] <- c("LOC100396531","1000001","1000636","1","white")
Marmoset_Alpha_Gene[,2] = as.numeric(Marmoset_Alpha_Gene[,2])
Marmoset_Alpha_Gene[,3] = as.numeric(Marmoset_Alpha_Gene[,3])
Marmoset_Alpha_Gene[,4] = as.numeric(Marmoset_Alpha_Gene[,4])
Marmoset_Alpha_Gene$name[4] <- "GSTA1"
Marmoset_Alpha_Gene$name[5] <- "GSTA3"
Marmoset_Alpha_Gene$name[6] <- "GSTA5"
Marmoset_Alpha_Gene_chr <- dna_seg(Marmoset_Alpha_Gene)
ann_Marmoset_chr <- annotation(x1=middle(Marmoset_Alpha_Gene_chr), text=Marmoset_Alpha_Gene_chr$name)

## species 11
Mouse_chr <- read_dna_seg_from_file("~/detoxification/Analysis_in_R/genoplotR/mousechr1_20180470_22315378.gb")
unique(Mouse_chr$name)
Mouse_Alpha <- Mouse_chr[Mouse_chr$name %in% c("Tram2","Tmem14a","Gsta3"),]
df11<- Mouse_Alpha[,c(1,2,3,4,12,13,14,15,16,17)]
df11$gene_type[1:21] <- "arrows"
Mouse_Alpha_start<- aggregate (start ~ name+strand+col,df11,min)
Mouse_Alpha_end<- aggregate (end ~ name+strand+col,df11,max)
Mouse_Alpha_Gene <- merge(Mouse_Alpha_start,Mouse_Alpha_end, by = c("name","strand","col"))
Mouse_Alpha_Gene <- Mouse_Alpha_Gene[c("name","start","end","strand","col")]
Mouse_Alpha_Gene$col <- c("red", "purple", "yellow")
Mouse_Alpha_Gene[nrow(Mouse_Alpha_Gene) + 1 ,] <- c("GSTAP1","999998","1000198","1","white")
Mouse_Alpha_Gene[nrow(Mouse_Alpha_Gene) + 1 ,] <- c("GSTAP2","1132051","1160920","-1","white")
Mouse_Alpha_Gene[nrow(Mouse_Alpha_Gene) + 1 ,] <- c("Gm4956","1105145","1117658","-1","white")
Mouse_Alpha_Gene[nrow(Mouse_Alpha_Gene) + 1 ,] <- c("Gm2693","1002075","1006954","-1","white")
Mouse_Alpha_Gene[,2] = as.numeric(Mouse_Alpha_Gene[,2])
Mouse_Alpha_Gene[,3] = as.numeric(Mouse_Alpha_Gene[,3])
Mouse_Alpha_Gene[,4] = as.numeric(Mouse_Alpha_Gene[,4])
Mouse_Alpha_Gene$name[5] <- "GSTA1"
Mouse_Alpha_Gene$name[2] <- "GSTA7"

Mouse_chr_2 <- read_dna_seg_from_file("~/detoxification/Analysis_in_R/genoplotR/mousechr9_77178564_79347192.gb")
unique(Mouse_chr_2$name)
Mouse_Alpha_2 <- Mouse_chr_2[Mouse_chr_2$name %in% c("Ooep","Dppa5a","Gsta2","Omt2b","Omt2a","Gsta1","Gsta4","Ick","Fbxo9"),]
df11_a<- Mouse_Alpha_2[,c(1,2,3,4,12,13,14,15,16,17)]
df11_a$gene_type[1:215] <- "arrows"
Mouse_Alpha2_start<- aggregate (start ~ name+strand+col,df11_a,min)
Mouse_Alpha2_end<- aggregate (end ~ name+strand+col,df11_a,max)
Mouse_Alpha2_Gene <- merge(Mouse_Alpha2_start,Mouse_Alpha2_end, by = c("name","strand","col"))
Mouse_Alpha2_Gene <- Mouse_Alpha2_Gene[c("name","start","end","strand","col")]
Mouse_Alpha2_Gene$col <- c("red", "purple", "yellow")
Mouse_Alpha2_Gene_merged <- rbind(Mouse_Alpha_Gene,Mouse_Alpha2_Gene)
Mouse_Alpha_Gene_chr <- dna_seg(Mouse_Alpha2_Gene_merged)
ann_Mouse_chr <- annotation(x1=middle(Mouse_Alpha_Gene_chr), text=Mouse_Alpha_Gene_chr$name)

## species 12
Rat_chr <- read_dna_seg_from_file("~/detoxification/Analysis_in_R/genoplotR/ratchr8_84485045_86645623.gb")
Rat_chr_2<- read_dna_seg_from_file("~/detoxification/Analysis_in_R/genoplotR/ratchr9_26311181_28533939.gb")
Rat_chr_merged <- rbind (Rat_chr,Rat_chr_2)
unique(Rat_chr_merged$name)
Rat_Alpha <- Rat_chr_merged[Rat_chr_merged$name %in% c("Fbxo9","Ick","Gsta4","Gsta1","Gsta2","Dppa5","Ooep","Tmem14a","LOC501110","Gsta3","RGD1562107"),]
df12<- Rat_Alpha[,c(1,2,3,4,12,13,14,15,16,17)]
df12$gene_type[1:266] <- "arrows"
Rat_Alpha_start<- aggregate (start ~ name+strand+col,df12,min)
Rat_Alpha_end<- aggregate (end ~ name+strand+col,df12,max)
Rat_Alpha_Gene <- merge(Rat_Alpha_start,Rat_Alpha_end, by = c("name","strand","col"))
Rat_Alpha_Gene <- Rat_Alpha_Gene[c("name","start","end","strand","col")]
Rat_Alpha_Gene$col <- c("red", "yellow", "orange", "blue", "green", "purple", "pink","red","yellow","blue","pink")
Rat_Alpha_Gene[nrow(Rat_Alpha_Gene) + 1 ,] <- c("LOC100909835","1126896","1127564","-1","white")
Rat_Alpha_Gene[nrow(Rat_Alpha_Gene) + 1 ,] <- c("GSTAP3","969539","974634","-1","white")
Rat_Alpha_Gene[nrow(Rat_Alpha_Gene) + 1 ,] <- c("LOC100362958","1000001","1000615","-1","white")
Rat_Alpha_Gene[nrow(Rat_Alpha_Gene) + 1 ,] <- c("LOC680857","1000001","1000626","-1","white")
Rat_Alpha_Gene[nrow(Rat_Alpha_Gene) + 1 ,] <- c("LOC100362958","1000001","1000269","-1","white")
Rat_Alpha_Gene[nrow(Rat_Alpha_Gene) + 1 ,] <- c("GSTAP1","1000001","1000153","-1","white")
Rat_Alpha_Gene[nrow(Rat_Alpha_Gene) + 1 ,] <- c("GSTAP4","1000004","1000668","-1","white")
Rat_Alpha_Gene[,2] = as.numeric(Rat_Alpha_Gene[,2])
Rat_Alpha_Gene[,3] = as.numeric(Rat_Alpha_Gene[,3])
Rat_Alpha_Gene[,4] = as.numeric(Rat_Alpha_Gene[,4])
Rat_Alpha_Gene$name[8] <- "GSTA6"
Rat_Alpha_Gene_chr <- dna_seg(Rat_Alpha_Gene)
ann_Rat_chr <- annotation(x1=middle(Rat_Alpha_Gene_chr), text=Rat_Alpha_Gene_chr$name)

##species 14
PrairieVole_chr <- read_dna_seg_from_file("~/detoxification/Analysis_in_R/genoplotR/PrairieVolechr5_60176807_62472331.gb")
PrairieVole_chr2 <- read_dna_seg_from_file("~/detoxification/Analysis_in_R/genoplotR/PrairieVolechrLG2_8574248_10639920.gb")
PrairieVole_chr_merged <- rbind (PrairieVole_chr,PrairieVole_chr2)
unique(PrairieVole_chr_merged$name)
PrairieVole_Alpha <- PrairieVole_chr[PrairieVole_chr$name %in% c("Ooep","Dppa5","LOC101995214","LOC101994637","LOC101993971","LOC101979641","LOC101993112","LOC101987899","LOC102002444","Mrps18a","Rsph9","Kcnq5","Rims1"),]
df14 <- PrairieVole_Alpha[,c(1,2,3,4,12,13,14,15,16,17)]
df14$gene_type[1:103] <- "arrows"
PrairieVole_Alpha_start<- aggregate (start ~ name+strand+col,df14,min)
PrairieVole_Alpha_end<- aggregate (end ~ name+strand+col,df14,max)
PrairieVole_Alpha_Gene <- merge(PrairieVole_Alpha_start,PrairieVole_Alpha_end, by = c("name","strand","col"))
PrairieVole_Alpha_Gene <- PrairieVole_Alpha_Gene[c("name","start","end","strand","col")]
PrairieVole_Alpha_Gene$col <- c("red", "purple", "yellow", "orange", "blue", "brown", "violet")
PrairieVole_Alpha_Gene[nrow(PrairieVole_Alpha_Gene) + 1 ,] <- c("GSTAP1","1000001","1000186","-1","white")
PrairieVole_Alpha_Gene[nrow(PrairieVole_Alpha_Gene) + 1 ,] <- c("GSTAP2","1011019","1011225","-1","white")
PrairieVole_Alpha_Gene[nrow(PrairieVole_Alpha_Gene) + 1 ,] <- c("GSTAP3","1286438","1286581","-1","white")
PrairieVole_Alpha_Gene[nrow(PrairieVole_Alpha_Gene) + 1 ,] <- c("LOC101991856","1000001","1000822","1","white")
PrairieVole_Alpha_Gene[,2] = as.numeric(PrairieVole_Alpha_Gene[,2])
PrairieVole_Alpha_Gene[,3] = as.numeric(PrairieVole_Alpha_Gene[,3])
PrairieVole_Alpha_Gene[,4] = as.numeric(PrairieVole_Alpha_Gene[,4])
PrairieVole_Alpha_Gene$name[2] <- "GSTA6"
PrairieVole_Alpha_Gene$name[3] <- "GSTA2"
PrairieVole_Alpha_Gene$name[4] <- "GSTA5"
PrairieVole_Alpha_Gene$name[5] <- "GSTA4"
PrairieVole_Alpha_Gene$name[6] <- "GSTA3"
PrairieVole_Alpha_Gene_chr <- dna_seg(PrairieVole_Alpha_Gene)
ann_PrairieVole_chr <- annotation(x1=middle(PrairieVole_Alpha_Gene_chr), text=PrairieVole_Alpha_Gene_chr$name)

## species 15
Rabbit_chr <- read_dna_seg_from_file("~/detoxification/Analysis_in_R/genoplotR/rabbitchr12_41250753_43738886.gb")
unique(Rabbit_chr$name)
Rabbit_Alpha <- Rabbit_chr[Rabbit_chr$name %in% c("TMEM14A","TRAM2","LOC100353174","LOC100353428","LOC100353681","LOC100328911","LOC100341104","LOC100353927","LOC100354186","LOC100328910","LOC100354436","GSTA4","ICK","FBXO9"),]
df15<- Rabbit_Alpha[,c(1,2,3,4,12,13,14,15,16,17)]
df15$gene_type[1:267] <- "arrows"
Rabbit_Alpha_start<- aggregate (start ~ name+strand+col,df15,min)
Rabbit_Alpha_end<- aggregate (end ~ name+strand+col,df15,max)
Rabbit_Alpha_Gene <- merge(Rabbit_Alpha_start,Rabbit_Alpha_end, by = c("name","strand","col"))
Rabbit_Alpha_Gene <- Rabbit_Alpha_Gene[c("name","start","end","strand","col")]
Rabbit_Alpha_Gene$col <- c("red", "yellow", "orange", "blue", "green", "purple", "pink", "brown","blue", "green", "purple", "pink", "brown","green")
Rabbit_Alpha_Gene[nrow(Rabbit_Alpha_Gene) + 1 ,] <- c("GSTAP1","997528","1002895","-1","white")
Rabbit_Alpha_Gene[nrow(Rabbit_Alpha_Gene) + 1 ,] <- c("GSTAP2","1059522","1059749","1","white")
Rabbit_Alpha_Gene[nrow(Rabbit_Alpha_Gene) + 1 ,] <- c("GSTAP3","1177372","1177542","1","white")
Rabbit_Alpha_Gene[nrow(Rabbit_Alpha_Gene) + 1 ,] <- c("GSTAP4","1184879","1192533","-1","white")
Rabbit_Alpha_Gene[nrow(Rabbit_Alpha_Gene) + 1 ,] <- c("GSTAP5","1340263","1361798","-1","white")
Rabbit_Alpha_Gene[nrow(Rabbit_Alpha_Gene) + 1 ,] <- c("GSTAP6","1020115","1026629","-1","white")
Rabbit_Alpha_Gene[,2] = as.numeric(Rabbit_Alpha_Gene[,2])
Rabbit_Alpha_Gene[,3] = as.numeric(Rabbit_Alpha_Gene[,3])
Rabbit_Alpha_Gene[,4] = as.numeric(Rabbit_Alpha_Gene[,4])
Rabbit_Alpha_Gene$name[4] <- "GSTA1"
Rabbit_Alpha_Gene$name[5] <- "GSTA3"
Rabbit_Alpha_Gene$name[6] <- "GSTA7"
Rabbit_Alpha_Gene$name[7] <- "GSTA10"
Rabbit_Alpha_Gene$name[8] <- "GSTA4"
Rabbit_Alpha_Gene$name[9] <- "GSTA6"
Rabbit_Alpha_Gene$name[10] <- "GSTA2"
Rabbit_Alpha_Gene$name[11] <- "GSTA8"
Rabbit_Alpha_Gene$name[12] <- "GSTA5"
Rabbit_Alpha_Gene_chr <- dna_seg(Rabbit_Alpha_Gene)
ann_Rabbit_chr <- annotation(x1=middle(Rabbit_Alpha_Gene_chr), text=Rabbit_Alpha_Gene_chr$name)

## species 16
## species 17
Cat_chr <- read_dna_seg_from_file("~/detoxification/Analysis_in_R/genoplotR/catchrB2_49706386_51816648.gb")
unique(Cat_chr$name)
Cat_Alpha <- Cat_chr[Cat_chr$name %in% c("TMEM14A","TRAM2","LOC105260581","LOC101096317","LOC101084793",
                                         "GSTA4"),]
df17<- Cat_Alpha[,c(1,2,3,4,12,13,14,15,16,17)]
df17$gene_type[1:108] <- "arrows"
Cat_Alpha_start<- aggregate (start ~ name+strand+col,df17,min)
Cat_Alpha_end<- aggregate (end ~ name+strand+col,df17,max)
Cat_Alpha_Gene <- merge(Cat_Alpha_start,Cat_Alpha_end, by = c("name","strand","col"))
Cat_Alpha_Gene <- Cat_Alpha_Gene[c("name","start","end","strand","col")]
Cat_Alpha_Gene$col <- c("red", "yellow", "orange", "blue", "green", "purple")
Cat_Alpha_Gene[nrow(Cat_Alpha_Gene) + 1 ,] <- c("LOC101092382","1000019","1000602","-1","white")
Cat_Alpha_Gene[,2] = as.numeric(Cat_Alpha_Gene[,2])
Cat_Alpha_Gene[,3] = as.numeric(Cat_Alpha_Gene[,3])
Cat_Alpha_Gene[,4] = as.numeric(Cat_Alpha_Gene[,4])
Cat_Alpha_Gene$name[2] <- "GSTA3"
Cat_Alpha_Gene$name[3] <- "GSTA2"
Cat_Alpha_Gene$name[4] <- "GSTA6"
Cat_Alpha_Gene_chr <- dna_seg(Cat_Alpha_Gene)
ann_Cat_chr <- annotation(x1=middle(Cat_Alpha_Gene_chr), text=Cat_Alpha_Gene_chr$name)

## species 18
Horse_chr <- read_dna_seg_from_file("~/detoxification/Analysis_in_R/genoplotR/catchrB2_49706386_51816648.gb")
unique(Cat_chr$name)
Cat_Alpha <- Cat_chr[Cat_chr$name %in% c("TMEM14A","TRAM2","LOC105260581","LOC101096317","LOC101084793",                                         "GSTA4"),]
df17<- Cat_Alpha[,c(1,2,3,4,12,13,14,15,16,17)]
df17$gene_type[1:108] <- "arrows"
Cat_Alpha_start<- aggregate (start ~ name+strand+col,df17,min)
Cat_Alpha_end<- aggregate (end ~ name+strand+col,df17,max)
Cat_Alpha_Gene <- merge(Cat_Alpha_start,Cat_Alpha_end, by = c("name","strand","col"))
Cat_Alpha_Gene <- Cat_Alpha_Gene[c("name","start","end","strand","col")]
Cat_Alpha_Gene$col <- c("red", "yellow", "orange", "blue", "green", "purple")
Cat_Alpha_Gene[nrow(Cat_Alpha_Gene) + 1 ,] <- c("LOC101092382","1000019","1000602","-1","white")
Cat_Alpha_Gene[,2] = as.numeric(Cat_Alpha_Gene[,2])
Cat_Alpha_Gene[,3] = as.numeric(Cat_Alpha_Gene[,3])
Cat_Alpha_Gene[,4] = as.numeric(Cat_Alpha_Gene[,4])
Cat_Alpha_Gene$name[2] <- "GSTA3"
Cat_Alpha_Gene$name[3] <- "GSTA2"
Cat_Alpha_Gene$name[4] <- "GSTA6"
Cat_Alpha_Gene_chr <- dna_seg(Cat_Alpha_Gene)
ann_Cat_chr <- annotation(x1=middle(Cat_Alpha_Gene_chr), text=Cat_Alpha_Gene_chr$name)

## final step
dna_segs <- list(Human_Alpha_Gene_chr,Chimp_Alpha_Gene_chr,Gorilla_Alpha_Gene_chr,OrangUtan_Alpha_Gene_chr,
                 NWCG_Alpha_Gene_chr,Baboon_Alpha_Gene_chr,GreenMonkey_Alpha_Gene_chr,Marmoset_Alpha_Gene_chr,
                 Mouse_Alpha_Gene_chr,Rat_Alpha_Gene_chr)
xlims <- list(c(815271,1409904,2409904,2439904),
              c(814523,1416598,1000001,1000654),
              c(814891,1421788,1000001,1000654),
              c(813022,1450275,999945,1000599),
              c(-1369496,-889519,-889519,-1000001),
              c(808868,1326075,1000001,1000654,1085191,1090557),
              c(-1423953,-897308,-1000616,-1000001,-1000250,-999998),
              c(776529,1260574,1000001,1000159,1000001,1000636),
              c(821093,1084493,1198992,930444),
              c(951314,1227600))

png(filename="Alpha_Gene.png",width=480,height=480)
plot_gene_map(dna_segs=dna_segs,dna_seg_labels = c("Human","Chimpanzee","Gorilla","OrangUtan","NWGC","Baboon","GreenMonkey",
                                                   "Marmoset","Mouse","Rat"), gene_type = "arrows" , arrow_head_len = Inf,annotations=list(ann_Human_chr,ann_Chimp_chr,ann_Gorilla_chr,ann_OrangUtan_chr,ann_NWCG_chr,ann_Baboon_chr,ann_GreenMonkey_chr,ann_Marmoset_chr,ann_Mouse_chr,ann_Rat_chr),xlims = xlims ,limit_to_longest_dna_seg = FALSE,annotation_cex = 0.3)
dev.off()
  