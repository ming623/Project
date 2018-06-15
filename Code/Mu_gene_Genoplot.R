library(genoPlotR)
Human_Mu_Gene <- data.frame(name=c("GNAT2","AMPD2","GSTM4","GSTM2","GSTM1","GSTM5","GSTM3","EPS8L3","CSF1"),
                            start = c(1000,1100,1200,1300,1400,1500,1600,1700,1800),
                            end = c(1050,1150,1250,1350,1450,1550,1650,1750,1850),
                            strand = c(-1,1,1,1,1,1,-1,-1,1),
                            col = c("white","white","orange","green","blue","brown","purple","white","white"))
Human_Mu_Gene_chr <- dna_seg(Human_Mu_Gene)
ann_Human_chr <- annotation(x1=middle(Human_Mu_Gene_chr), text=Human_Mu_Gene_chr$name)

Chimp_Mu_Gene <- data.frame(name=c("GNAT2","AMPD2","GSTM4","GSTM1","GSTM5","GSTM3","EPS8L3","CSF1"),
                            start = c(1000,1100,1200,1300,1400,1500,1600,1700),
                            end = c(1050,1150,1250,1350,1450,1550,1650,1750),
                            strand = c(-1,1,1,1,1,-1,-1,1),
                            col = c("white","white","orange","blue","brown","purple","white","white"))
Chimp_Mu_Gene_chr <- dna_seg(Chimp_Mu_Gene)
ann_Chimp_chr <- annotation(x1=middle(Chimp_Mu_Gene_chr), text=Chimp_Mu_Gene_chr$name)

Gorilla_Mu_Gene <- data.frame(name=c("GNAT2","AMPD2","GSTM2","GSTM3","GSTM5","GSTM4","EPS8L3","CSF1"),
                              start = c(1000,1100,1200,1300,1400,1500,1600,1700),
                              end = c(1050,1150,1250,1350,1450,1550,1650,1750),
                              strand = c(-1,1,1,1,1,-1,-1,1),
                              col = c("white","white","green","blue","brown","purple","white","white"))
Gorilla_Mu_Gene_chr <- dna_seg(Gorilla_Mu_Gene)
ann_Gorilla_chr <- annotation(x1=middle(Gorilla_Mu_Gene_chr), text=Gorilla_Mu_Gene_chr$name)

OrangUtan_Mu_Gene <- data.frame(name=c("GNAT2","AMPD2","GSTM4","GSTM2","GSTM1","GSTM5","GSTM3","EPS8L3","CSF1"),
                                start = c(1000,1100,1200,1300,1400,1500,1600,1700,1800),
                                end = c(1050,1150,1250,1350,1450,1550,1650,1750,1850),
                                strand = c(-1,1,1,1,1,1,-1,-1,1),
                                col = c("white","white","orange","green","blue","brown","purple","white","white"))
OrangUtan_Mu_Gene_chr <- dna_seg(OrangUtan_Mu_Gene)
ann_OrangUtan_chr <- annotation(x1=middle(OrangUtan_Mu_Gene_chr), text=OrangUtan_Mu_Gene_chr$name)

NLEU_Mu_Gene <- data.frame(name=c("GNAT2","AMPD2","GSTM4","GSTM2","GSTM1","GSTM3","EPS8L3","CSF1"),
                           start = c(1000,1100,1200,1300,1400,1500,1600,1700),
                           end = c(1050,1150,1250,1350,1450,1550,1650,1750),
                           strand = c(-1,1,1,1,1,1,-1,1),
                           col = c("white","white","orange","green","blue","purple","white","white"))
NLEU_Mu_Gene_chr <- dna_seg(NLEU_Mu_Gene)
ann_NLEU_chr <- annotation(x1=middle(NLEU_Mu_Gene_chr), text=NLEU_Mu_Gene_chr$name)

Macaque_Mu_Gene <- data.frame(name=c("GNAT2","AMPD2","GSTM4","GSTM2","GSTM1","GSTM5","GSTM3","EPS8L3","CSF1"),
                              start = c(1000,1100,1200,1300,1400,1500,1600,1700,1800),
                              end = c(1050,1150,1250,1350,1450,1550,1650,1750,1850),
                              strand = c(-1,1,1,1,1,1,-1,-1,1),
                              col = c("white","white","orange","green","blue","brown","purple","white","white"))
Macaque_Mu_Gene_chr <- dna_seg(Macaque_Mu_Gene)
ann_Macaque_chr <- annotation(x1=middle(Macaque_Mu_Gene_chr), text=Macaque_Mu_Gene_chr$name)

CEM_Mu_Gene <- data.frame(name=c("GNAT2","AMPD2","GSTM4","GSTM2","GSTM1","GSTM5","GSTM3","EPS8L3","CSF1"),
                          start = c(1000,1100,1200,1300,1400,1500,1600,1700,1800),
                          end = c(1050,1150,1250,1350,1450,1550,1650,1750,1850),
                          strand = c(-1,1,1,1,1,1,-1,-1,1),
                          col = c("white","white","orange","green","blue","brown","purple","white","white"))
CEM_Mu_Gene_chr <- dna_seg(CEM_Mu_Gene)
ann_CEM_chr <- annotation(x1=middle(CEM_Mu_Gene_chr), text=CEM_Mu_Gene_chr$name)

Baboon_Mu_Gene <- data.frame(name=c("GNAT2","AMPD2","GSTM4","GSTM2","GSTM5","GSTM3","EPS8L3","CSF1","GSTM1"),
                             start = c(1000,1100,1200,1300,1400,1500,1600,1700,1800),
                             end = c(1050,1150,1250,1350,1450,1550,1650,1750,1850),
                             strand = c(-1,1,1,1,1,-1,-1,1,1),
                             col = c("white","white","orange","green","brown","purple","white","white","blue"))
Baboon_Mu_Gene_chr <- dna_seg(Baboon_Mu_Gene)
ann_Baboon_chr <- annotation(x1=middle(Baboon_Mu_Gene_chr), text=Baboon_Mu_Gene_chr$name)

GreenMonkey_Mu_Gene <- data.frame(name=c("GNAT2","AMPD2","GSTM4","GSTM2","GSTM1","GSTM5","GSTM3","EPS8L3","CSF1"),
                                  start = c(1000,1100,1200,1300,1400,1500,1600,1700,1800),
                                  end = c(1050,1150,1250,1350,1450,1550,1650,1750,1850),
                                  strand = c(-1,1,1,1,1,1,-1,-1,1),
                                  col = c("white","white","orange","green","blue","brown","purple","white","white"))
GreenMonkey_Mu_Gene_chr <- dna_seg(GreenMonkey_Mu_Gene)
ann_GreenMonkey_chr <- annotation(x1=middle(GreenMonkey_Mu_Gene_chr), text=GreenMonkey_Mu_Gene_chr$name)

WTEM_Mu_Gene <- data.frame(name=c("GNAT2","AMPD2","GSTM1","GSTM3","GSTM5","GSTM4","EPS8L3","CSF1"),
                           start = c(1000,1100,1200,1300,1400,1500,1600,1700),
                           end = c(1050,1150,1250,1350,1450,1550,1650,1750),
                           strand = c(-1,1,1,1,1,-1,-1,1),
                           col = c("white","white","orange","brown","green","purple","white","white"))
WTEM_Mu_Gene_chr <- dna_seg(WTEM_Mu_Gene)
ann_WTEM_chr <- annotation(x1=middle(WTEM_Mu_Gene_chr), text=WTEM_Mu_Gene_chr$name)

Mouse_Mu_Gene <- data.frame(name=c("GNAT2","AMPD2","GSTM4","GSTMP4","GSTM1","GSTM2","GSTM3","GSTM6","GSTM7","Gm9515","GSTM5","EPS8L3","CSF1"),
                            start = c(1000,1100,1200,1300,1400,1500,1600,1700,1800,1900,2000,2100,2200),
                            end = c(1050,1150,1250,1350,1450,1550,1650,1750,1850,1950,2050,2150,2250),
                            strand = c(-1,1,1,-1,1,1,1,1,1,-1,-1,-1,1),
                            col = c("white","white","red","white","slategray4","yellow","peachpuff","steelblue3","deeppink","white","purple","white","white"))
Mouse_Mu_Gene_chr <- dna_seg(Mouse_Mu_Gene)
ann_Mouse_chr <- annotation(x1=middle(Mouse_Mu_Gene_chr), text=Mouse_Mu_Gene_chr$name)

Rat_Mu_Gene <- data.frame(name=c("GNAT2","AMPD2","GSTM4","GSTMP2","GSTM1","GSTM2","GSTM3","GSTMP3","GSTM6","GSTM8","GSTM7","GSTM5","EPS8L3","CSF1"),
                          start = c(1000,1100,1200,1300,1400,1500,1600,1700,1800,1900,2000,2100,2200,2300),
                          end = c(1050,1150,1250,1350,1450,1550,1650,1750,1850,1950,2050,2150,2250,2350),
                          strand = c(-1,1,1,-1,1,1,1,1,1,1,-1,-1,1,-1),
                          col = c("white","white","red","white","slategray4","yellow","peachpuff","white","steelblue3","deeppink","white","purple","white",
                                  "white"))
Rat_Mu_Gene_chr <- dna_seg(Rat_Mu_Gene)
ann_Rat_chr <- annotation(x1=middle(Rat_Mu_Gene_chr), text=Rat_Mu_Gene_chr$name)

Pv_Mu_Gene <- data.frame(name=c("GNAT2","AMPD2","GSTM4","GSTM5","GSTM6","GSTM7","GSTM1","GSTM2","GSTM3","GSTMP2","GSTM8","GSTM9","GSTM10","GSTM11","EPS8L3","CSF1"),
                         start = c(1000,1100,1200,1300,1400,1500,1600,1700,1800,1900,2000,2100,2200,2300,2400,2500),
                         end = c(1050,1150,1250,1350,1450,1550,1650,1750,1850,1950,2050,2150,2250,2350,2450,2550),
                         strand = c(-1,1,1,-1,1,1,1,1,1,-1,1,1,1,-1,-1,1),
                         col = c("white","white","red","white","slategray4","slategray4","slategray4","yellow","peachpuff","white","steelblue3","deeppink","white","purple","white","white"))
Pv_Mu_Gene_chr <- dna_seg(Pv_Mu_Gene)
ann_Pv_chr <- annotation(x1=middle(Pv_Mu_Gene_chr), text=Pv_Mu_Gene_chr$name)

Rabbit_Mu_Gene <- data.frame(name=c("GNAT2","AMPD2","GSTM4","GSTM8","GSTM7","GSTM3","GSTM1","GSTM2","GSTMP1","GSTM5","EPS8L3","CSF1"),
                             start = c(1000,1100,1200,1300,1400,1500,1600,1700,1800,1900,2000,2100),
                             end = c(1050,1150,1250,1350,1450,1550,1650,1750,1850,1950,2050,2150),
                             strand = c(-1,1,1,-1,1,1,1,-1,1,-1,1,1),
                             col = c("white","white","white","white","white","white","white","white","white","purple","white",
                                     "white"))
Rabbit_Mu_Gene_chr <- dna_seg(Rabbit_Mu_Gene)
ann_Rabbit_chr <- annotation(x1=middle(Rabbit_Mu_Gene_chr), text=Rabbit_Mu_Gene_chr$name)

#Dog
Dog_Mu_Gene <- data.frame(name=c("GNAT2","AMPD2","GSTM1","GSTM2","EPS8L3","CSF1"),
                          start = c(1000,1100,1200,1300,1400,1500),
                          end = c(1050,1150,1250,1350,1450,1550),
                          strand = c(-1,1,1,-1,-1,1),
                          col = c("white","white","black","purple","white","white"))
Dog_Mu_Gene_chr <- dna_seg(Dog_Mu_Gene)
ann_Dog_chr <- annotation(x1=middle(Dog_Mu_Gene_chr), text=Dog_Mu_Gene_chr$name)


#Cat
Cat_Mu_Gene <- data.frame(name=c("GNAT2","AMPD2","GSTM1","GSTM2","EPS8L3","CSF1"),
                          start = c(1000,1100,1200,1300,1400,1500),
                          end = c(1050,1150,1250,1350,1450,1550),
                          strand = c(-1,1,1,-1,1,1),
                          col = c("white","white","black","purple","white","white"))
Cat_Mu_Gene_chr <- dna_seg(Cat_Mu_Gene)
ann_Cat_chr <- annotation(x1=middle(Cat_Mu_Gene_chr), text=Cat_Mu_Gene_chr$name)

#Horse
Horse_Mu_Gene <- data.frame(name=c("GNAT2","AMPD2","GSTM3","GSTM2","GSTM1","GSTMP2","EPS8L3","CSF1"),
                            start = c(1000,1100,1200,1300,1400,1500,1600,1700),
                            end = c(1050,1150,1250,1350,1450,1550,1650,1750),
                            strand = c(-1,1,1,1,-1,-1,1,1),
                            col = c("white","white","white","white","purple","white","white","white"))
Horse_Mu_Gene_chr <- dna_seg(Horse_Mu_Gene)
ann_HOrse_chr <- annotation(x1=middle(Horse_Mu_Gene_chr), text=Horse_Mu_Gene_chr$name)


Sheep_Mu_Gene <- data.frame(name=c("GNAT2","AMPD2","GSTM1","GSTM4","GSTM3","GSTM2","GSTM5","CSF1","AHCYL1","GSTM7","EPS8L3"),
                            start = c(1000,1100,1200,1300,1400,1500,1600,1700,1800,1900,2000),
                            end = c(1050,1150,1250,1350,1450,1550,1650,1750,1850,1950,2050),
                            strand = c(-1,1,1,1,1,1,-1,1,1,1,-1),
                            col = c("white","white","palevioletred1","springgreen2","sienna2","aquamarine3","purple","white","white","sienna2","white"))

Sheep_Mu_Gene_chr <- dna_seg(Sheep_Mu_Gene)
ann_Sheep_chr <- annotation(x1=middle(Sheep_Mu_Gene_chr), text=Sheep_Mu_Gene_chr$name)

Goat_Mu_Gene <- data.frame(name=c("GNAT2","AMPD2","GSTM2","GSTMP1","GSTM1","GSTM3","GSTM4","GSTM5","EPS8L3","CSF1"),
                           start = c(1000,1100,1200,1300,1400,1500,1600,1700,1800,1900),
                           end = c(1050,1150,1250,1350,1450,1550,1650,1750,1850,1950),
                           strand = c(-1,1,1,-1,1,1,1,1,-1,-1),
                           col = c("white","white","palevioletred1","white","springgreen2","sienna2","aquamarine3","purple","white","white"))
Goat_Mu_Gene_chr <- dna_seg(Goat_Mu_Gene)
ann_Goat_chr <- annotation(x1=middle(Goat_Mu_Gene_chr), text=Goat_Mu_Gene_chr$name)

Cow_Mu_Gene <- data.frame(name=c("GNAT2","AMPD2","GSTM7","GSTM5","GSTM4","GSTM1","GSTM2","GSTM3","EPS8L3","CSF1"),
                          start = c(1000,1100,1200,1300,1400,1500,1600,1700,1800,1900),
                          end = c(1050,1150,1250,1350,1450,1550,1650,1750,1850,1950),
                          strand = c(-1,1,1,1,1,1,1,-1,1,1),
                          col = c("white","white","palevioletred1","springgreen2","sienna2","sienna2","aquamarine3","purple","white","white"))
Cow_Mu_Gene_chr <- dna_seg(Cow_Mu_Gene)
ann_Cow_chr <- annotation(x1=middle(Cow_Mu_Gene_chr), text=Cow_Mu_Gene_chr$name)

Pig_Mu_Gene <- data.frame(name=c("STRIP1","CSF1","GSTM1","GSTM2","EPS8L3","GNAT3"),
                          start = c(1000,1100,1200,1300,1400,1500),
                          end = c(1050,1150,1250,1350,1450,1550),
                          strand = c(-1,-1,-1,-1,-1,-1),
                          col = c("white","white","aquamarine3","purple","white","white"))
Pig_Mu_Gene_chr <- dna_seg(Pig_Mu_Gene)
ann_Pig_chr <- annotation(x1=middle(Pig_Mu_Gene_chr), text=Pig_Mu_Gene_chr$name)

Grayshorttailopossum_Gene <- data.frame(name=c("GNAT2","AMPD2","GSTM1","GSTM2","EPS8L3","AHCYL1"),
                   start = c(1000,1100,1200,1300,1400,1500),
                   end = c(1050,1150,1250,1350,1450,1550),
                   strand = c(-1,1,1,-1,1,1),
                   col = c("white","white","white","white","white","white"))
Grayshorttailopossum_Mu_Gene_chr <- dna_seg(Grayshorttailopossum_Gene)
ann_Grayshorttailopossum_chr <- annotation(x1=middle(Grayshorttailopossum_Mu_Gene_chr), text=Grayshorttailopossum_Mu_Gene_chr$name)



dna_segs <-list(Human_Mu_Gene_chr,Chimp_Mu_Gene_chr,Gorilla_Mu_Gene_chr,OrangUtan_Mu_Gene_chr,NLEU_Mu_Gene_chr,Macaque_Mu_Gene_chr,CEM_Mu_Gene_chr,Baboon_Mu_Gene_chr,GreenMonkey_Mu_Gene_chr,WTEM_Mu_Gene_chr,Mouse_Mu_Gene_chr,Rat_Mu_Gene_chr,Pv_Mu_Gene_chr,Rabbit_Mu_Gene_chr,Dog_Mu_Gene_chr,Cat_Mu_Gene_chr,Horse_Mu_Gene_chr,Sheep_Mu_Gene_chr,Goat_Mu_Gene_chr,Cow_Mu_Gene_chr,Pig_Mu_Gene_chr,Grayshorttailopossum_Mu_Gene_chr)

xlims <- list(c(1000,1850),
              c(1000,1250,1300,1750),
              c(1000,1750),
              c(1000,1850),
              c(1000,1750),
              c(1000,1850),
              c(1000,1850),
              c(1000,1750,1800,1850),
              c(1000,1850),
              c(1000,1750),
              c(1000,2250),
              c(1000,2350),
              c(1000,2550),
              c(1000,2150),
              c(1000,1550),
              c(1000,1550),
              c(1000,1750),
              c(1000,1850,1800,1950),
              c(1000,1950),
              c(1000,1950),
              c(1000,1450),
              c(1000,1550))
loadfonts(device = "postscript")
postscript("~/detoxification/Analysis_in_R/genoplotR/Mu_gene_genoplotR.eps", width = 480 , height = 480, onefile = TRUE, horizontal = FALSE)
##tiff(filename = "~/detoxification/Analysis_in_R/genoplotR/Mu_gene_genoplotR.tiff", width = 1366, height = 685)
plot_gene_map(dna_segs=dna_segs,dna_seg_labels = c("Hsap","Ptro","Ggor","Pabe","Nleu","Mmul","Mfas","Panu","Csab","Cjac","Mmus","Rnor","Moch","Ocun","Clup","Fcat","Ecab","Oari","Chir","Btau","Sscr","Mdom"), gene_type = "arrows" , arrow_head_len = Inf,annotations=list(ann_Human_chr,ann_Chimp_chr,ann_Gorilla_chr,ann_OrangUtan_chr,ann_NLEU_chr,ann_Macaque_chr,ann_CEM_chr,ann_Baboon_chr,ann_GreenMonkey_chr,ann_WTEM_chr,ann_Mouse_chr,ann_Rat_chr,ann_Pv_chr,ann_Rabbit_chr,ann_Dog_chr,ann_Cat_chr,ann_HOrse_chr,ann_Sheep_chr,ann_Goat_chr,ann_Cow_chr,ann_Pig_chr,ann_Grayshorttailopossum_chr),xlims = xlims ,limit_to_longest_dna_seg = FALSE,annotation_cex = 0.5)
dev.off()
