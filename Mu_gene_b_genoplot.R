library (genoPlotR)
Mouse_Mu_Gene <- data.frame(name=c("GNAT2","AMPD2","GSTM4","GSTMP4","GSTM1","GSTM2","GSTM3","GSTM6","GSTM7","Gm9515","GSTM5","EPS8L3","CSF1","Gm18553_mu","Gm4845","Gm8834","Gm5562","Gm6665"),
                            start = c(1000000,1500000,2000000,2500000,3000000,3500000,4000000,4500000,5000000,5500000,6000000,6500000,7000000,7500000,8000000,8500000,9000000,9500000),
                            end = c(1300000,1800000,2300000,2800000,3300000,3800000,4300000,4800000,5300000,5800000,6300000,6800000,7300000,7800000,8300000,8800000,9300000,9800000),
                            strand = c(-1,1,1,-1,1,1,1,1,1,-1,-1,-1,1,-1,-1,1,-1,-1),
                            col = c("white","white","red","white","limegreen","yellow","peachpuff","steelblue3","hotpink1","white","purple","white",
                                    "white","white","white","white","white","white"))
Mouse_Mu_Gene_chr <- dna_seg(Mouse_Mu_Gene)
ann_Mouse_chr <- annotation(x1=middle(Mouse_Mu_Gene_chr), text=Mouse_Mu_Gene_chr$name)

Rat_Mu_Gene <- data.frame(name=c("GNAT2","AMPD2","GSTM4","GSTMP2","GSTM1","GSTM2","GSTM3","GSTMP3","GSTM6","GSTM8","GSTM2a","GSTM5","EPS8L3","CSF1","GSTMP1","GSTMP4"),
                          start = c(1000000,1500000,2000000,2500000,3000000,3500000,4000000,4500000,5000000,5500000,6000000,6500000,7000000,7500000,8000000,8500000),
                          end = c(1300000,1800000,2300000,2800000,3300000,3800000,4300000,4800000,5300000,5800000,6300000,6800000,7300000,7800000,8300000,8800000),
                          strand = c(-1,1,1,-1,1,1,1,1,1,1,-1,-1,1,-1,-1,1),
                          col = c("white","white","red","white","limegreen","yellow","peachpuff","white","steelblue3","hotpink1","white","purple","white",
                                  "white","white","white"))
Rat_Mu_Gene_chr <- dna_seg(Rat_Mu_Gene)
ann_Rat_chr <- annotation(x1=middle(Rat_Mu_Gene_chr), text=Rat_Mu_Gene_chr$name)

Pv_Mu_Gene <- data.frame(name=c("GSTM4","GSTM4a","GSTM1b","GSTM1a","GSTM1","GSTM2","GSTM3","GSTMP2","GSTM8","GSTM9","GSTM8a","GSTM11","EPS8L3","GSTMP1","LOC101991785"),
                         start = c(1000000,1500000,2000000,2500000,3000000,3500000,4000000,4500000,5000000,5500000,6000000,6500000,7000000,7500000,8000000),
                         end = c(1300000,1800000,2300000,2800000,3300000,3800000,4300000,4800000,5300000,5800000,6300000,6800000,7300000,7800000,8300000),
                         strand = c(1,-1,1,1,1,1,1,-1,1,1,1,-1,-1,-1,-1),
                         col = c("red","white","limegreen","limegreen","limegreen","yellow","peachpuff","white","steelblue3","hotpink1","white","purple","white","white","white"))
Pv_Mu_Gene_chr <- dna_seg(Pv_Mu_Gene)
ann_Pv_chr <- annotation(x1=middle(Pv_Mu_Gene_chr), text=Pv_Mu_Gene_chr$name)

Rabbit_Mu_Gene <- data.frame(name=c("GNAT2","AMPD2","GSTM4","GSTM8","GSTM7","GSTM3","GSTM1","GSTM2","GSTMP1","GSTM5","EPS8L3","CSF1","GSTMP2"),
                             start = c(1000000,1500000,2000000,2500000,3000000,3500000,4000000,4500000,5000000,5500000,6000000,6500000,7000000),
                             end = c(1300000,1800000,2300000,2800000,3300000,3800000,4300000,4800000,5300000,5800000,6300000,6800000,7300000),
                             strand = c(-1,1,1,-1,1,1,1,-1,1,-1,1,1,1),
                             col = c("white","white","white","white","white","white","white","white","white","purple","white",
                                     "white","white"))
Rabbit_Mu_Gene_chr <- dna_seg(Rabbit_Mu_Gene)
ann_Rabbit_chr <- annotation(x1=middle(Rabbit_Mu_Gene_chr), text=Rabbit_Mu_Gene_chr$name)

#Dog
Dog_Mu_Gene <- data.frame(name=c("GNAT2","AMPD2","GSTM1","GSTM2","EPS8L3","CSF1","LOC100687736","GSTMP1","GSTMP2","GSTMP3","LOC100684054"),
                          start = c(1000000,1500000,2000000,2500000,3000000,3500000,4000000,4500000,5000000,5500000,6000000),
                          end = c(1300000,1800000,2300000,2800000,3300000,3800000,4300000,4800000,5300000,5800000,6300000),
                          strand = c(-1,1,1,-1,-1,1,-1,-1,-1,1,1),
                          col = c("white","white","black","purple","white","white","white","white","white","white","white"))
Dog_Mu_Gene_chr <- dna_seg(Dog_Mu_Gene)
ann_Dog_chr <- annotation(x1=middle(Dog_Mu_Gene_chr), text=Dog_Mu_Gene_chr$name)


#Cat
Cat_Mu_Gene <- data.frame(name=c("GNAT2","AMPD2","GSTM1","GSTM2","EPS8L3","CSF1","GSTMP1","GSTMP2"),
                          start = c(1000000,1500000,2000000,2500000,3000000,3500000,4000000,4500000),
                          end = c(1300000,1800000,2300000,2800000,3300000,3800000,4300000,4800000),
                          strand = c(-1,1,1,-1,1,1,-1,1),
                          col = c("white","white","black","purple","white","white","white","white"))
Cat_Mu_Gene_chr <- dna_seg(Cat_Mu_Gene)
ann_Cat_chr <- annotation(x1=middle(Cat_Mu_Gene_chr), text=Cat_Mu_Gene_chr$name)

#Horse
Horse_Mu_Gene <- data.frame(name=c("GNAT2","AMPD2","GSTM3","GSTM2","GSTM1","GSTMP2","EPS8L3","CSF1","GSTMP1","LOC100059865"),
                            start = c(1000000,1500000,2000000,2500000,3000000,3500000,4000000,4500000,5000000,5500000),
                            end = c(1300000,1800000,2300000,2800000,3300000,3800000,4300000,4800000,5300000,5800000),
                            strand = c(-1,1,1,1,-1,-1,1,1,-1,1),
                            col = c("white","white","white","white","purple","white","white","white","white","white"))
Horse_Mu_Gene_chr <- dna_seg(Horse_Mu_Gene)
ann_HOrse_chr <- annotation(x1=middle(Horse_Mu_Gene_chr), text=Horse_Mu_Gene_chr$name)


Sheep_Mu_Gene <- data.frame(name=c("GNAT2","AMPD2","GSTM1","GSTM4","GSTM3","GSTM2","GSTM5","CSF1","AHCYL1","GSTM3a","EPS8L3","GSTMP1"),
                            start = c(1000000,1500000,2000000,2500000,3000000,3500000,4000000,4500000,5000000,5500000,6000000,6500000),
                            end = c(1300000,1800000,2300000,2800000,3300000,3800000,4300000,4800000,5300000,5800000,6300000,6800000),
                            strand = c(-1,1,1,1,1,1,-1,1,1,1,-1,1),
                            col = c("white","white","palevioletred1","springgreen2","sienna2","aquamarine3","purple","white","white","sienna2","white","white"))

Sheep_Mu_Gene_chr <- dna_seg(Sheep_Mu_Gene)
ann_Sheep_chr <- annotation(x1=middle(Sheep_Mu_Gene_chr), text=Sheep_Mu_Gene_chr$name)

Goat_Mu_Gene <- data.frame(name=c("GNAT2","AMPD2","GSTM2","GSTMP1","GSTM1","GSTM3","GSTM4","GSTM5","EPS8L3","CSF1","GSTMP2"),
                           start = c(1000000,1500000,2000000,2500000,3000000,3500000,4000000,4500000,5000000,5500000,6000000),
                           end = c(1300000,1800000,2300000,2800000,3300000,3800000,4300000,4800000,5300000,5800000,6300000),
                           strand = c(-1,1,1,-1,1,1,1,1,-1,-1,1),
                           col = c("white","white","palevioletred1","white","springgreen2","sienna2","aquamarine3","purple","white","white","white"))
Goat_Mu_Gene_chr <- dna_seg(Goat_Mu_Gene)
ann_Goat_chr <- annotation(x1=middle(Goat_Mu_Gene_chr), text=Goat_Mu_Gene_chr$name)
Cow_Mu_Gene <- data.frame(name=c("GNAT2","AMPD2","GSTM7","GSTM5","GSTM4","GSTM4a","GSTM2","GSTM3","EPS8L3","CSF1","GSTMP1"),
                          start = c(1000000,1500000,2000000,2500000,3000000,3500000,4000000,4500000,5000000,5500000,6000000),
                          end = c(1300000,1800000,2300000,2800000,3300000,3800000,4300000,4800000,5300000,5800000,6300000),
                          strand = c(-1,1,1,1,1,1,1,-1,1,1,1),
                          col = c("white","white","palevioletred1","springgreen2","sienna2","sienna2","aquamarine3","purple","white","white","white"))
Cow_Mu_Gene_chr <- dna_seg(Cow_Mu_Gene)
ann_Cow_chr <- annotation(x1=middle(Cow_Mu_Gene_chr), text=Cow_Mu_Gene_chr$name)

Pig_Mu_Gene <- data.frame(name=c("CSF1","GSTM1","GSTM2","EPS8L3","GNAT3","GSTMP1","GSTMP2","LOC100624249"),
                          start = c(1000000,1500000,2000000,2500000,3000000,3500000,4000000,4500000),
                          end = c(1300000,1800000,2300000,2800000,3300000,3800000,4300000,4800000),
                          strand = c(-1,-1,-1,-1,-1,-1,-1,1),
                          col = c("white","aquamarine3","purple","white","white","white","white","white"))
Pig_Mu_Gene_chr <- dna_seg(Pig_Mu_Gene)
ann_Pig_chr <- annotation(x1=middle(Pig_Mu_Gene_chr), text=Pig_Mu_Gene_chr$name)

dna_segs <- list(Mouse_Mu_Gene_chr,Rat_Mu_Gene_chr,Pv_Mu_Gene_chr,Rabbit_Mu_Gene_chr,Dog_Mu_Gene_chr,Cat_Mu_Gene_chr,Horse_Mu_Gene_chr,Sheep_Mu_Gene_chr,Goat_Mu_Gene_chr,Cow_Mu_Gene_chr,Pig_Mu_Gene_chr)

xlims <-list(c(1000000,7300000,7500000,7800000,8000000,8300000,8500000,8800000,9000000,9300000,9500000,9800000),
             c(1000000,7800000,8000000,8300000,8500000,8800000),
             c(1000000,7300000,7500000,7800000,8000000,8300000),
             c(1000000,6800000,7000000,7300000),
             c(1000000,3800000,4000000,4300000,4500000,4800000,5000000,5300000,5500000,5800000,6000000,6300000),
             c(1000000,3800000,4000000,4300000,4500000,4800000),
             c(1000000,4800000,5000000,5300000,5500000,5800000),
             c(1000000,5300000,5500000,6300000),
             c(1000000,5800000,6000000,6300000),
             c(1000000,5800000,6000000,6300000),
             c(1000000,3300000,3500000,3800000,4000000,4300000,4500000,4800000))
tiff(filename = "~/detoxification/Analysis_in_R/genoplotR/Mu_gene_b.tiff", width = 1366, height = 685)
plot_gene_map(dna_segs=dna_segs,dna_seg_labels = c("Mmus","Rnor","Moch","Ocun","Clup","Fcat","Ecab","Oari","Chir","Btau","Sscr"), gene_type = "arrows" , arrow_head_len = Inf,annotations=list(ann_Mouse_chr,ann_Rat_chr,ann_Pv_chr,ann_Rabbit_chr,ann_Dog_chr,ann_Cat_chr,ann_HOrse_chr,ann_Sheep_chr,ann_Goat_chr,ann_Cow_chr,ann_Pig_chr),xlims = xlims ,limit_to_longest_dna_seg = FALSE,annotation_cex = 0.7)
dev.off()