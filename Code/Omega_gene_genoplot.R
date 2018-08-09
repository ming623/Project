library(genoPlotR)
Human_Omega_Gene <- data.frame(name=c("SFR1","CRAP43","GSTO1","GSTO2","ITPRIP","CFAP58"),
                               start = c(1000,1100,1200,1300,1400,1500),
                               end = c(1050,1150,1250,1350,1450,1550),
                               strand = c(1,-1,1,1,-1,1),
                               fill = c("white","white","green","red","white","white"),
                               col = rep("black",6))

Human_Omega_Gene_chr <- dna_seg(Human_Omega_Gene)
ann_Human_chr <- annotation(x1=middle(Human_Omega_Gene_chr), text=Human_Omega_Gene_chr$name)

Chimp_Omega_Gene <- data.frame(name=c("SFR1","CRAP43","GSTO1","GSTO2","ITPRIP","CFAP58"),
                               start = c(1000,1100,1200,1300,1400,1500),
                               end = c(1050,1150,1250,1350,1450,1550),
                               strand = c(1,-1,1,1,-1,1),
                               fill = c("white","white","green","red","white","white"),
                               col = rep("black",6))

Chimp_Omega_Gene_chr <- dna_seg(Chimp_Omega_Gene)
ann_Chimp_chr <- annotation(x1=middle(Chimp_Omega_Gene_chr), text=Chimp_Omega_Gene_chr$name)

Gorilla_Omega_Gene <- data.frame(name=c("SFR1","WDR96","GSTO1","GSTO2","ITPRIP","CCDC147"),
                                 start = c(1000,1100,1200,1300,1400,1500),
                                 end = c(1050,1150,1250,1350,1450,1550),
                                 strand = c(1,-1,1,1,-1,1),
                                 fill = c("white","white","green","red","white","white"),
                                 col = rep("black",6))

Gorilla_Omega_Gene_chr <- dna_seg(Gorilla_Omega_Gene)
ann_Gorilla_chr <- annotation(x1=middle(Gorilla_Omega_Gene_chr), text=Gorilla_Omega_Gene_chr$name)

OrangUtan_Omega_Gene <- data.frame(name=c("SFR1","CRAP43","GSTO1","GSTO2","ITPRIP","CFAP58"),
                                   start = c(1000,1100,1200,1300,1400,1500),
                                   end = c(1050,1150,1250,1350,1450,1550),
                                   strand = c(1,-1,1,1,-1,1),
                                   fill = c("white","white","green","red","white","white"),
                                   col = rep("black",6))

OrangUtan_Omega_Gene_chr <- dna_seg(OrangUtan_Omega_Gene)
ann_OrangUtan_chr <- annotation(x1=middle(OrangUtan_Omega_Gene_chr), text=OrangUtan_Omega_Gene_chr$name)



NWCG_Omega_Gene <- data.frame(name=c("SFR1","CRAP43","GSTO1","GSTO2","ITPRIP","CFAP58"),
                              start = c(1000,1100,1200,1300,1400,1500),
                              end = c(1050,1150,1250,1350,1450,1550),
                              strand = c(1,-1,1,1,-1,1),
                              fill = c("white","white","green","red","white","white"),
                              col = rep("black",6))

NWCG_Omega_Gene_chr <- dna_seg(NWCG_Omega_Gene)
ann_NWGC_chr <- annotation(x1=middle(NWCG_Omega_Gene_chr), text=NWCG_Omega_Gene_chr$name)

Macaque_Omega_Gene <- data.frame(name=c("SFR1","MIR609","GSTO1","GSTO2","ITPRIP","CFAP58"),
                                 start = c(1000,1100,1200,1300,1400,1500),
                                 end = c(1050,1150,1250,1350,1450,1550),
                                 strand = c(1,-1,1,1,-1,1),
                                 fill = c("white","white","green","red","white","white"),
                                 col = rep("black",6))

Macaque_Omega_Gene_chr <- dna_seg(Macaque_Omega_Gene)
ann_Macaque_chr <- annotation(x1=middle(Macaque_Omega_Gene_chr), text=Macaque_Omega_Gene_chr$name)

CEM_Omega_Gene <- data.frame(name=c("SFR1","LOC","GSTO1","GSTO2","LOC","SORC53"),
                             start = c(1000,1100,1200,1300,1400,1500),
                             end = c(1050,1150,1250,1350,1450,1550),
                             strand = c(1,-1,1,1,-1,1),
                             fill = c("white","white","green","red","white","white"),
                             col = rep("black",6))

CEM_Omega_Gene_chr <- dna_seg(CEM_Omega_Gene)
ann_CEM_chr <- annotation(x1=middle(CEM_Omega_Gene_chr), text=CEM_Omega_Gene_chr$name)


Baboon_Omega_Gene <- data.frame(name=c("fill17A1","SFR1","GSTO1","GSTO2","ITPRIP","CFAP58"),
                             start = c(1000,1100,1200,1300,1400,1500),
                             end = c(1050,1150,1250,1350,1450,1550),
                             strand = c(-1,1,1,1,-1,1),
                             fill = c("white","white","green","red","white","white"),
                             col = rep("black",6))

Baboon_Omega_Gene_chr <- dna_seg(Baboon_Omega_Gene)
ann_Baboon_chr <- annotation(x1=middle(Baboon_Omega_Gene_chr), text=Baboon_Omega_Gene_chr$name)


GreenMonkey_Omega_Gene <- data.frame(name=c("SFR1","CRAP43","GSTO1","GSTO2","ITPRIP","CFAP58"),
                                start = c(1000,1100,1200,1300,1400,1500),
                                end = c(1050,1150,1250,1350,1450,1550),
                                strand = c(1,-1,1,1,-1,1),
                                fill = c("white","white","green","red","white","white"),
                                col = rep("black",6))

GreenMonkey_Omega_Gene_chr <- dna_seg(GreenMonkey_Omega_Gene)
ann_GreenMonkey_chr <- annotation(x1=middle(GreenMonkey_Omega_Gene_chr), text=GreenMonkey_Omega_Gene_chr$name)

Marmoset_Omega_Gene <- data.frame(name=c("SFR1","CFAP43","GSTO1","GSTO2","ITPRIP","CFAP58"),
                                  start = c(1000,1100,1200,1300,1400,1500),
                                  end = c(1050,1150,1250,1350,1450,1550),
                                  strand = c(1,-1,1,1,-1,1),
                                  fill = c("white","white","green","red","white","white"),
                                  col = rep("black",6))

Marmoset_Omega_Gene_chr <- dna_seg(Marmoset_Omega_Gene)
ann_Marmoset_chr <- annotation(x1=middle(Marmoset_Omega_Gene_chr), text=Marmoset_Omega_Gene_chr$name)

Mouse_Omega_Gene <- data.frame(name=c("SFR1","CRAP43","GSTO1","GSTO2","ITPRIP","CFAP58"),
                               start = c(1000,1100,1200,1300,1400,1500),
                               end = c(1050,1150,1250,1350,1450,1550),
                               strand = c(1,-1,1,1,-1,1),
                               fill = c("white","white","green","red","white","white"),
                               col = rep("black",6))

Mouse_Omega_Gene_chr <- dna_seg(Mouse_Omega_Gene)
ann_Mouse_chr <- annotation(x1=middle(Mouse_Omega_Gene_chr), text=Mouse_Omega_Gene_chr$name)

Rat_Omega_Gene <- data.frame(name=c("SFR1","CRAP43","GSTO1","GSTO2","ITPRIP","TRAK-CUU"),
                             start = c(1000,1100,1200,1300,1400,1500),
                             end = c(1050,1150,1250,1350,1450,1550),
                             strand = c(1,-1,1,1,1,-1),
                             fill = c("white","white","green","red","white","white"),
                             col = rep("black",6))

Rat_Omega_Gene_chr <- dna_seg(Rat_Omega_Gene)
ann_Rat_chr <- annotation(x1=middle(Rat_Omega_Gene_chr), text=Rat_Omega_Gene_chr$name)


PV_Omega_Gene <- data.frame(name=c("SFR1","CRAP43","GSTO1","GSTO2","ITPRIP","CFAP58"),
                            start = c(1000,1100,1200,1300,1400,1500),
                            end = c(1050,1150,1250,1350,1450,1550),
                            strand = c(1,-1,1,1,-1,1),
                            fill = c("white","white","green","red","white","white"),
                            col = rep("black",6))

PV_Omega_Gene_chr <- dna_seg(PV_Omega_Gene)
ann_PV_chr <- annotation(x1=middle(PV_Omega_Gene_chr), text=PV_Omega_Gene_chr$name)

Rabbit_Omega_Gene <- data.frame(name=c("SFR1","WDR96","GSTO1","GSTO2","ITPRIP","CCDC147"),
                                start = c(1000,1100,1200,1300,1400,1500),
                                end = c(1050,1150,1250,1350,1450,1550),
                                strand = c(1,-1,1,1,-1,1),
                                fill = c("white","white","green","red","white","white"),
                                col = rep("black",6))

Rabbit_Omega_Gene_chr <- dna_seg(Rabbit_Omega_Gene)
ann_Rabbit_chr <- annotation(x1=middle(Rabbit_Omega_Gene_chr), text=Rabbit_Omega_Gene_chr$name)

Dog_Omega_Gene <- data.frame(name=c("CFAP43","LOC","GSTO1","GSTO2","ITPRIP","CFAP58"),
                             start = c(1000,1100,1200,1300,1400,1500),
                             end = c(1050,1150,1250,1350,1450,1550),
                             strand = c(1,-1,1,1,-1,1),
                             fill = c("white","white","green","red","white","white"),
                             col = rep("black",6))

Dog_Omega_Gene_chr <- dna_seg(Dog_Omega_Gene)
ann_Dog_chr <- annotation(x1=middle(Dog_Omega_Gene_chr), text=Dog_Omega_Gene_chr$name)

Cat_Omega_Gene <- data.frame(name=c("SFR1","CRAP43","GSTO1","GSTO2","ITPRIP","CFAP58"),
                             start = c(1000,1100,1200,1300,1400,1500),
                             end = c(1050,1150,1250,1350,1450,1550),
                             strand = c(1,-1,1,1,-1,1),
                             fill = c("white","white","green","red","white","white"),
                             col = rep("black",6))

Cat_Omega_Gene_chr <- dna_seg(Cat_Omega_Gene)
ann_Cat_chr <- annotation(x1=middle(Cat_Omega_Gene_chr), text=Cat_Omega_Gene_chr$name)

Horse_Omega_Gene <- data.frame(name=c("SFR1","CRAP43","GSTO1","GSTO2","ITPRIP","CFAP58"),
                               start = c(1000,1100,1200,1300,1400,1500),
                               end = c(1050,1150,1250,1350,1450,1550),
                               strand = c(1,-1,1,1,-1,1),
                               fill = c("white","white","green","red","white","white"),
                               col = rep("black",6))

Horse_Omega_Gene_chr <- dna_seg(Horse_Omega_Gene)
ann_Horse_chr <- annotation(x1=middle(Horse_Omega_Gene_chr), text=Horse_Omega_Gene_chr$name)

Sheep_Omega_Gene <- data.frame(name=c("SFR1","CRAP43","GSTO1","GSTO2","GSTO3","ITPRIP","CFAP58"),
                               start = c(1000,1100,1200,1300,1400,1500,1600),
                               end = c(1050,1150,1250,1350,1450,1550,1650),
                               strand = c(1,-1,1,1,1,-1,1),
                               fill = c("white","white","green","green","red","white","white"),
                               col = rep("black",7))

Sheep_Omega_Gene_chr <- dna_seg(Sheep_Omega_Gene)
ann_Sheep_chr <- annotation(x1=middle(Sheep_Omega_Gene_chr), text=Sheep_Omega_Gene_chr$name)


Goat_Omega_Gene <- data.frame(name=c("SFR1","CRAP43","GSTO1","GSTO3","GSTO2","ITPRIP","CFAP58"),
                              start = c(1000,1100,1200,1300,1400,1500,1600),
                              end = c(1050,1150,1250,1350,1450,1550,1650),
                              strand = c(1,-1,1,1,1,-1,1),
                              fill = c("white","white","green","green","red","white","white"),
                              col = rep("black",7))

Goat_Omega_Gene_chr <- dna_seg(Goat_Omega_Gene)
ann_Goat_chr <- annotation(x1=middle(Goat_Omega_Gene_chr), text=Goat_Omega_Gene_chr$name)


Cow_Omega_Gene <- data.frame(name=c("SFR1","CRAP43","GSTO3","GSTO1","GSTO2","ITPRIP","CFAP58"),
                             start = c(1000,1100,1200,1300,1400,1500,1600),
                             end = c(1050,1150,1250,1350,1450,1550,1650),
                             strand = c(1,-1,1,1,1,-1,1),
                             fill = c("white","white","green","green","red","white","white"),
                             col = rep("black",7))

Cow_Omega_Gene_chr <- dna_seg(Cow_Omega_Gene)
ann_Cow_chr <- annotation(x1=middle(Cow_Omega_Gene_chr), text=Cow_Omega_Gene_chr$name)

Pig_Omega_Gene <- data.frame(name=c("fill17A1","SFR1","GSTOP1","GSTO1","GSTO2","ITPRIP","CFAP58"),
                             start = c(1000,1100,1200,1300,1400,1500,1600),
                             end = c(1050,1150,1250,1350,1450,1550,1650),
                             strand = c(-1,1,-1,1,1,1,-1),
                             fill = c("white","white","white","green","red","white","white"),
                             col = rep("black",7))

Pig_Omega_Gene_chr <- dna_seg(Pig_Omega_Gene)
ann_Pig_chr <- annotation(x1=middle(Pig_Omega_Gene_chr), text=Pig_Omega_Gene_chr$name)


Grayshorttailopossum_Omega_Gene <- data.frame(name=c("fill17A1","WDR96","GSTO2","SFR1","GSTO1","ITRIP","CCDC147"),
                                              start = c(1000,1100,1200,1300,1400,1500,1600),
                                              end = c(1050,1150,1250,1350,1450,1550,1650),
                                              strand = c(-1,-1,-1,1,1,-1,1),
                                              fill = c("white","white","red","white","green","white","white"),
                                              col = rep("black",7))

Grayshorttailopossum_Omega_Gene_chr <- dna_seg(Grayshorttailopossum_Omega_Gene)
ann_Grayshorttailopossum_chr <- annotation(x1=middle(Grayshorttailopossum_Omega_Gene_chr), text=Grayshorttailopossum_Omega_Gene_chr$name)

test_Omega_Gene <- data.frame(name=c("SFR1","CRAP43","GSTO1","GSTO2","ITPRIP","CFAP58","test","test","test","test","test","test","test","test","test","test"),
                               start = c(1000,1100,1200,1300,1400,1500,1600,1700,1800,1900,2000,2100,2200,2300,2400,2500),
                               end = c(1050,1150,1250,1350,1450,1550,1650,1750,1850,1950,2050,2150,2250,2350,2450,2550),
                               strand = c(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),
                               fill = c("white","white","white","white","white","white","white","white","white","white","white","white","white","white","white","white"),
                              col = rep("black",16))

test_Omega_Gene_chr <- dna_seg(test_Omega_Gene)
ann_test_chr <- annotation(x1=middle(test_Omega_Gene_chr), text=test_Omega_Gene_chr$name)


dna_segs <-list(Human_Omega_Gene_chr,Chimp_Omega_Gene_chr,Gorilla_Omega_Gene_chr,OrangUtan_Omega_Gene_chr,NWCG_Omega_Gene_chr,Macaque_Omega_Gene_chr,CEM_Omega_Gene_chr,Baboon_Omega_Gene_chr,GreenMonkey_Omega_Gene_chr,Marmoset_Omega_Gene_chr,Mouse_Omega_Gene_chr,Rat_Omega_Gene_chr,PV_Omega_Gene_chr,Rabbit_Omega_Gene_chr,Dog_Omega_Gene_chr,Cat_Omega_Gene_chr,Horse_Omega_Gene_chr,Sheep_Omega_Gene_chr,Goat_Omega_Gene_chr,Cow_Omega_Gene_chr,Pig_Omega_Gene_chr,Grayshorttailopossum_Omega_Gene_chr,test_Omega_Gene_chr)
xlims <- list(c(1000,1550),
              c(1000,1550),
              c(1000,1550),
              c(1000,1550),
              c(1000,1550),
              c(1000,1550),
              c(1000,1550),
              c(1000,1550),
              c(1000,1550),
              c(1000,1550),
              c(1000,1550),
              c(1000,1550),
              c(1000,1550),
              c(1000,1550),
              c(1000,1550),
              c(1000,1550),
              c(1000,1650),
              c(1000,1650),
              c(1000,1650),
              c(1000,1650),
              c(1000,1650),
              c(1000,1650),
              c(1000,2550))
##loadfonts(device = "postscript")
##postscript("~/detoxification/Analysis_in_R/genoplotR/Omega_gene_genoplotR.eps", width = 480 , height = 480, onefile = TRUE, horizontal = FALSE)
tiff(filename = "~/detoxification/Analysis_in_R/genoplotR/Omega_gene_GenoplotR.tiff", width = 1366, height = 685)

plot_gene_map(dna_segs=dna_segs,dna_seg_labels = c("Hsap","Ptro","Ggor","Pabe","Nleu","Mmul","Mfas","Panu","Csab","Cjac","Mmus","Rnor","Moch","Ocun","Clup","Fcat","Ecab","Oari","Chir","Btau","Sscr","Mdom","test"), gene_type = "arrows" , arrow_head_len = Inf,annotations=list(ann_Human_chr,ann_Chimp_chr,ann_Gorilla_chr,ann_OrangUtan_chr,ann_NWGC_chr,ann_Macaque_chr,ann_CEM_chr,ann_Baboon_chr,ann_GreenMonkey_chr,ann_Marmoset_chr,ann_Mouse_chr,ann_Rat_chr,ann_PV_chr,ann_Rabbit_chr,ann_Dog_chr,ann_Cat_chr,ann_Horse_chr,ann_Goat_chr,ann_Sheep_chr,ann_Cow_chr,ann_Pig_chr,ann_Grayshorttailopossum_chr,ann_test_chr),xlims = xlims ,limit_to_longest_dna_seg = FALSE,annotation_cex = 1.0)
dev.off()