library(genoPlotR)
Human_Zeta_Gene <- data.frame(name=c("NGB","POMT2","GSTZ1","TMED8","SAMD15"),
                              start = c(1000,1100,1200,1300,1400),
                              end = c(1050,1150,1250,1350,1450),
                              strand =  c(-1,-1,1,-1,1),
                              col=c("white","white","blue","white","white"))
Human_Zeta_Gene_chr <- dna_seg(Human_Zeta_Gene)
ann_Human_chr <- annotation(x1=middle(Human_Zeta_Gene_chr), text=Human_Zeta_Gene_chr$name)

Chimp_Zeta_Gene <- data.frame(name=c("NGB","POMT2","GSTZ1","TMED8","SAMD15"),
                              start = c(1000,1100,1200,1300,1400),
                              end = c(1050,1150,1250,1350,1450),
                              strand =  c(-1,-1,1,-1,1),
                              col=c("white","white","blue","white","white"))
Chimp_Zeta_Gene_chr <- dna_seg(Chimp_Zeta_Gene)
ann_Chimp_chr <- annotation(x1=middle(Chimp_Zeta_Gene_chr), text=Chimp_Zeta_Gene_chr$name)  

Gorilla_Zeta_Gene <- data.frame(name=c("NGB","POMT2","GSTZ1","TMED8","SAMD15"),
                                start = c(1000,1100,1200,1300,1400),
                                end = c(1050,1150,1250,1350,1450),
                              strand =  c(-1,-1,1,-1,1),
                              col=c("white","white","blue","white","white"))
Gorilla_Zeta_Gene_chr <- dna_seg(Gorilla_Zeta_Gene)
ann_Gorilla_chr <- annotation(x1=middle(Gorilla_Zeta_Gene_chr), text=Gorilla_Zeta_Gene_chr$name)

OrangUtan_Zeta_Gene <- data.frame(name=c("NGB","POMT2","GSTZ1","TMED8","SAMD15"),
                                  start = c(1000,1100,1200,1300,1400),
                                  end = c(1050,1150,1250,1350,1450),
                                strand =  c(-1,-1,1,-1,1),
                                col=c("white","white","blue","white","white"))
OrangUtan_Zeta_Gene_chr <- dna_seg(OrangUtan_Zeta_Gene)
ann_OrangUtan_chr <- annotation(x1=middle(OrangUtan_Zeta_Gene_chr), text=OrangUtan_Zeta_Gene_chr$name)

NLEU_Zeta_Gene <- data.frame(name=c("NGB","POMT2","GSTZ1","TMED8","SAMD15"),
                             start = c(1000,1100,1200,1300,1400),
                             end = c(1050,1150,1250,1350,1450),
                                strand =  c(-1,-1,1,-1,1),
                                col=c("white","white","blue","white","white"))
NLEU_Zeta_Gene_chr <- dna_seg(NLEU_Zeta_Gene)
ann_NLEU_chr <- annotation(x1=middle(NLEU_Zeta_Gene_chr), text=NLEU_Zeta_Gene_chr$name)


Macaque_Zeta_Gene <- data.frame(name=c("NGB","POMT2","GSTZ1","VIPAR","ASHAI"),
                                start = c(1000,1100,1200,1300,1400),
                                end = c(1050,1150,1250,1350,1450),
                            strand =  c(-1,-1,1,-1,1),
                            col=c("white","white","blue","white","white"))
Macaque_Zeta_Gene_chr <- dna_seg(Macaque_Zeta_Gene)
ann_Macaque_chr <- annotation(x1=middle(Macaque_Zeta_Gene_chr), text=Macaque_Zeta_Gene_chr$name)

CEM_Zeta_Gene <- data.frame(name=c("NGB","POMT2","GSTZ1","TMED8","SAMD15"),
                            start = c(1000,1100,1200,1300,1400),
                            end = c(1050,1150,1250,1350,1450),
                             strand =  c(-1,-1,1,-1,1),
                             col=c("white","white","blue","white","white"))
CEM_Zeta_Gene_chr <- dna_seg(CEM_Zeta_Gene)
ann_CEM_chr <- annotation(x1=middle(CEM_Zeta_Gene_chr), text=CEM_Zeta_Gene_chr$name)

Baboon_Zeta_Gene <- data.frame(name=c("NGB","POMT2","GSTZ1","TMED8","SAMD15"),
                               start = c(1000,1100,1200,1300,1400),
                               end = c(1050,1150,1250,1350,1450),
                                strand =  c(-1,-1,1,-1,1),
                                col=c("white","white","blue","white","white"))
Baboon_Zeta_Gene_chr <- dna_seg(Baboon_Zeta_Gene)
ann_Baboon_chr <- annotation(x1=middle(Baboon_Zeta_Gene_chr), text=Baboon_Zeta_Gene_chr$name)

GreenMonkey_Zeta_Gene <- data.frame(name=c("NGB","POMT2","GSTZ1","TMED8","SAMD15"),
                                    start = c(1000,1100,1200,1300,1400),
                                    end = c(1050,1150,1250,1350,1450),
                               strand =  c(-1,-1,1,-1,1),
                               col=c("white","white","blue","white","white"))
GreenMonkey_Zeta_Gene_chr <- dna_seg(GreenMonkey_Zeta_Gene)
ann_GreenMonkey_chr <- annotation(x1=middle(GreenMonkey_Zeta_Gene_chr), text=GreenMonkey_Zeta_Gene_chr$name)

WTEM_Zeta_Gene <- data.frame(name=c("NGB","POMT2","GSTZ1","TMED8","SAMD15"),
                             start = c(1000,1100,1200,1300,1400),
                             end = c(1050,1150,1250,1350,1450),
                               strand =  c(-1,-1,1,-1,1),
                               col=c("white","white","blue","white","white"))
WTEM_Zeta_Gene_chr <- dna_seg(WTEM_Zeta_Gene)
ann_WTEM_chr <- annotation(x1=middle(WTEM_Zeta_Gene_chr), text=WTEM_Zeta_Gene_chr$name)

Mouse_Zeta_Gene <- data.frame(name=c("NGB","POMT2","GSTZ1","TMED8","SAMD15"),
                              start = c(1000,1100,1200,1300,1400),
                              end = c(1050,1150,1250,1350,1450),
                             strand =  c(-1,-1,1,-1,1),
                             col=c("white","white","blue","white","white"))
Mouse_Zeta_Gene_chr <- dna_seg(Mouse_Zeta_Gene)
ann_Mouse_chr <- annotation(x1=middle(Mouse_Zeta_Gene_chr), text=Mouse_Zeta_Gene_chr$name)

Rat_Zeta_Gene <- data.frame(name=c("NGB","POMT2","GSTZ1","SAMD15","NOXRED1"),
                            start = c(1000,1100,1200,1300,1400),
                            end = c(1050,1150,1250,1350,1450),
                              strand =  c(-1,-1,1,-1,1),
                              col=c("white","white","blue","white","white"))
Rat_Zeta_Gene_chr <- dna_seg(Rat_Zeta_Gene)
ann_Rat_chr <- annotation(x1=middle(Rat_Zeta_Gene_chr), text=Rat_Zeta_Gene_chr$name)

PV_Zeta_Gene <- data.frame(name=c("NGB","POMT2","GSTZ1","TMED8","SAMD15"),
                           start = c(1000,1100,1200,1300,1400),
                           end = c(1050,1150,1250,1350,1450),
                              strand =  c(-1,-1,1,-1,1),
                              col=c("white","white","blue","white","white"))
PV_Zeta_Gene_chr <- dna_seg(PV_Zeta_Gene)
ann_PV_chr <- annotation(x1=middle(PV_Zeta_Gene_chr), text=PV_Zeta_Gene_chr$name)

Rabbit_Zeta_Gene <- data.frame(name=c("NGB","POMT2","GSTZ1","TMED8","SAMD15"),
                               start = c(1000,1100,1200,1300,1400),
                               end = c(1050,1150,1250,1350,1450),
                           strand =  c(-1,-1,1,-1,1),
                           col=c("white","white","blue","white","white"))
Rabbit_Zeta_Gene_chr <- dna_seg(Rabbit_Zeta_Gene)
ann_Rabbit_chr <- annotation(x1=middle(Rabbit_Zeta_Gene_chr), text=Rabbit_Zeta_Gene_chr$name)

Dog_Zeta_Gene <- data.frame(name=c("NGB","POMT2","GSTZ1","TMED8","SAMD15"),
                            start = c(1000,1100,1200,1300,1400),
                            end = c(1050,1150,1250,1350,1450),
                            strand =  c(-1,-1,1,-1,1),
                            col=c("white","white","blue","white","white"))
Dog_Zeta_Gene_chr <- dna_seg(Dog_Zeta_Gene)
ann_Dog_chr <- annotation(x1=middle(Dog_Zeta_Gene_chr), text=Dog_Zeta_Gene_chr$name)

Cat_Zeta_Gene <- data.frame(name=c("NGB","POMT2","GSTZ1","TMED8","SAMD15"),
                               start = c(1000,1100,1200,1300,1400),
                               end = c(1050,1150,1250,1350,1450),
                               strand =  c(-1,-1,1,-1,1),
                               col=c("white","white","blue","white","white"))
Cat_Zeta_Gene_chr <- dna_seg(Cat_Zeta_Gene)
ann_Cat_chr <- annotation(x1=middle(Cat_Zeta_Gene_chr), text=Cat_Zeta_Gene_chr$name)

Horse_Zeta_Gene <- data.frame(name=c("NGB","POMT2","GSTZ1","TMED8","SAMD15"),
                              start = c(1000,1100,1200,1300,1400),
                              end = c(1050,1150,1250,1350,1450),
                            strand =  c(-1,-1,1,-1,1),
                            col=c("white","white","blue","white","white"))
Horse_Zeta_Gene_chr <- dna_seg(Horse_Zeta_Gene)
ann_Horse_chr <- annotation(x1=middle(Horse_Zeta_Gene_chr), text=Horse_Zeta_Gene_chr$name)

Sheep_Zeta_Gene <- data.frame(name=c("NGB","POMT2","GSTZ1","TMED8","SAMD15"),
                              start = c(1000,1100,1200,1300,1400),
                              end = c(1050,1150,1250,1350,1450),
                              strand =  c(-1,-1,1,-1,1),
                              col=c("white","white","blue","white","white"))
Sheep_Zeta_Gene_chr <- dna_seg(Sheep_Zeta_Gene)
ann_Sheep_chr <- annotation(x1=middle(Sheep_Zeta_Gene_chr), text=Sheep_Zeta_Gene_chr$name)

Goat_Zeta_Gene <- data.frame(name=c("NGB","POMT2","GSTZ1","TMED8","SAMD15"),
                             start = c(1000,1100,1200,1300,1400),
                             end = c(1050,1150,1250,1350,1450),
                              strand =  c(-1,-1,1,-1,1),
                              col=c("white","white","blue","white","white"))
Goat_Zeta_Gene_chr <- dna_seg(Goat_Zeta_Gene)
ann_Goat_chr <- annotation(x1=middle(Goat_Zeta_Gene_chr), text=Goat_Zeta_Gene_chr$name)

Cow_Zeta_Gene <- data.frame(name=c("NGB","POMT2","GSTZ1","TMED8","SAMD15"),
                            start = c(1000,1100,1200,1300,1400),
                            end = c(1050,1150,1250,1350,1450),
                             strand =  c(-1,-1,1,-1,1),
                             col=c("white","white","blue","white","white"))
Cow_Zeta_Gene_chr <- dna_seg(Cow_Zeta_Gene)
ann_Cow_chr <- annotation(x1=middle(Cow_Zeta_Gene_chr), text=Cow_Zeta_Gene_chr$name)

Pig_Zeta_Gene <- data.frame(name=c("NGB","POMT2","GSTZ1","TMED8","SAMD15"),
                            start = c(1000,1100,1200,1300,1400),
                            end = c(1050,1150,1250,1350,1450),
                            strand =  c(-1,-1,1,-1,1),
                            col=c("white","white","blue","white","white"))
Pig_Zeta_Gene_chr <- dna_seg(Pig_Zeta_Gene)
ann_Pig_chr <- annotation(x1=middle(Pig_Zeta_Gene_chr), text=Pig_Zeta_Gene_chr$name)

Grayshorttailopossum_Zeta_Gene <- data.frame(name=c("NGB","POMT2","GSTZ1","TMED8","SAMD15"),
                                             start = c(1000,1100,1200,1300,1400),
                                             end = c(1050,1150,1250,1350,1450),
                                            strand =  c(-1,-1,1,-1,1),
                                            col=c("white","white","blue","white","white"))
Grayshorttailopossum_Zeta_Gene_chr <- dna_seg(Grayshorttailopossum_Zeta_Gene)
ann_Grayshorttailopossum_chr <- annotation(x1=middle(Grayshorttailopossum_Zeta_Gene_chr), text=Grayshorttailopossum_Zeta_Gene_chr$name)

test_zeta_Gene <- data.frame(name=c("test","test","test","test","test","test","test","test","test","test","test","test","test","test","test","test"),
                              start = c(1000,1100,1200,1300,1400,1500,1600,1700,1800,1900,2000,2100,2200,2300,2400,2500),
                              end = c(1050,1150,1250,1350,1450,1550,1650,1750,1850,1950,2050,2150,2250,2350,2450,2550),
                              strand = c(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),
                              col = c("white","white","white","white","white","white","white","white","white","white","white","white","white","white","white","white"))

test_zeta_Gene_chr <- dna_seg(test_zeta_Gene)
ann_zeta_chr <- annotation(x1=middle(test_zeta_Gene_chr), text=test_zeta_Gene_chr$name)




dna_segs <-list(Human_Zeta_Gene_chr,Chimp_Zeta_Gene_chr,Gorilla_Zeta_Gene_chr,OrangUtan_Zeta_Gene_chr,NLEU_Zeta_Gene_chr,Macaque_Zeta_Gene_chr,CEM_Zeta_Gene_chr,Baboon_Zeta_Gene_chr,GreenMonkey_Zeta_Gene_chr,WTEM_Zeta_Gene_chr,Mouse_Zeta_Gene_chr,Rabbit_Zeta_Gene_chr,PV_Zeta_Gene_chr,Rabbit_Zeta_Gene_chr,Dog_Zeta_Gene_chr,Cat_Zeta_Gene_chr,Horse_Zeta_Gene_chr,Sheep_Zeta_Gene_chr,Goat_Zeta_Gene_chr,Cow_Zeta_Gene_chr,Pig_Zeta_Gene_chr,Grayshorttailopossum_Zeta_Gene_chr,test_zeta_Gene_chr)
loadfonts(device = "postscript")
postscript("~/detoxification/Analysis_in_R/genoplotR/Zeta_gene_genoplotR.eps", width = 480 , height = 480, onefile = TRUE, horizontal = FALSE)
##tiff(filename = "~/detoxification/Analysis_in_R/genoplotR/Zeta_gene_genoplotR.tiff", width = 1366, height = 685)
plot_gene_map(dna_segs=dna_segs,dna_seg_labels = c("Hsap","Ptro","Ggor","Pabe","Nleu","Mmul","Mfas","Panu","Csab","Cjac","Mmus","Rnor","Moch","Ocun","Clup","Fcat","Ecab","Oari","Chir","Btau","Sscr","Mdom","test"), gene_type = "arrows" , arrow_head_len = Inf,annotations=list(ann_Human_chr,ann_Chimp_chr,ann_Gorilla_chr,ann_OrangUtan_chr,ann_NLEU_chr,ann_Macaque_chr,ann_CEM_chr,ann_Baboon_chr,ann_GreenMonkey_chr,ann_WTEM_chr,ann_Mouse_chr,ann_Rat_chr,ann_PV_chr,ann_Rabbit_chr,ann_Dog_chr,ann_Cat_chr,ann_Horse_chr,ann_Sheep_chr,ann_Goat_chr,ann_Cow_chr,ann_Pig_chr,ann_Grayshorttailopossum_chr,ann_zeta_chr),limit_to_longest_dna_seg = FALSE,annotation_cex = 0.5)
dev.off()



