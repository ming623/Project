library(genoPlotR)
Human_Mu_Gene <- data.frame(name=c("GNAT2","AMPD2","GSTM4","GSTM2","GSTM1","GSTM5","GSTM3","EPS8L3","CSF1","GSTM3P2","GSTM3P1","GSTM5P1","GSTM2P1"),
                            start = c(1000000,1500000,2000000,2500000,3000000,3500000,4000000,4500000,5000000,5500000,6000000,6500000,7000000),
                            end = c(1300000,1800000,2300000,2800000,3300000,3800000,4300000,4800000,5300000,5800000,6300000,6800000,7300000),
                            strand = c(-1,1,1,1,1,1,-1,-1,1,-1,1,1,-1),
                            col = c("white","white","orange","green","blue","brown","purple","white","white","white","white","white",
                                    "white"))
Human_Mu_Gene_chr <- dna_seg(Human_Mu_Gene)
ann_Human_chr <- annotation(x1=middle(Human_Mu_Gene_chr), text=Human_Mu_Gene_chr$name)

Chimp_Mu_Gene <- data.frame(name=c("GNAT2","AMPD2","GSTM4","GSTM1","GSTM5","GSTM3","EPS8L3","CSF1","GSTMP1","LOC104005229","LOC470750","GSTMP2"),
                            start = c(1000000,1500000,2000000,3000000,3500000,4000000,4500000,5000000,5500000,6000000,6500000,7000000),
                            end = c(1300000,1800000,2300000,3300000,3800000,4300000,4800000,5300000,5800000,6300000,6800000,7300000),
                            strand = c(-1,1,1,1,1,-1,-1,1,1,-1,-1,1),
                            col = c("white","white","orange","blue","brown","purple","white","white","white","white","white",
                                    "white"))
Chimp_Mu_Gene_chr <- dna_seg(Chimp_Mu_Gene)
ann_Chimp_chr <- annotation(x1=middle(Chimp_Mu_Gene_chr), text=Chimp_Mu_Gene_chr$name)

Gorilla_Mu_Gene <- data.frame(name=c("GNAT2","AMPD2","GSTM2","GSTM3","GSTM5","GSTM4","EPS8L3","CSF1","GSTMP1","GSTMP2","LOC101133732","LOC101138588"),
                              start = c(1000000,1500000,2000000,2500000,3000000,3500000,4000000,4500000,5000000,5500000,6000000,6500000),
                              end = c(1300000,1800000,2300000,2800000,3300000,3800000,4300000,4800000,5300000,5800000,6300000,6800000),
                              strand = c(-1,1,1,1,1,-1,-1,1,-1,1,1,-1),
                              col = c("white","white","green","blue","brown","purple","white","white","white","white","white",
                                      "white"))
Gorilla_Mu_Gene_chr <- dna_seg(Gorilla_Mu_Gene)
ann_Gorilla_chr <- annotation(x1=middle(Gorilla_Mu_Gene_chr), text=Gorilla_Mu_Gene_chr$name)

OrangUtan_Mu_Gene <- data.frame(name=c("GNAT2","AMPD2","GSTM4","GSTM2","GSTM1","GSTM5","GSTM3","EPS8L3","CSF1","GSTMP1","LOC103889968","LOC100444079","LOC100936843"),
                                start = c(1000000,1500000,2000000,2500000,3000000,3500000,4000000,4500000,5000000,5500000,6000000,6500000,7000000),
                                end = c(1300000,1800000,2300000,2800000,3300000,3800000,4300000,4800000,5300000,5800000,6300000,6800000,7300000),
                                strand = c(-1,1,1,1,1,1,-1,-1,1,1,-1,1,-1),
                                col = c("white","white","orange","green","blue","brown","purple","white","white","white","white","white",
                                        "white"))
OrangUtan_Mu_Gene_chr <- dna_seg(OrangUtan_Mu_Gene)
ann_OrangUtan_chr <- annotation(x1=middle(OrangUtan_Mu_Gene_chr), text=OrangUtan_Mu_Gene_chr$name)

NLEU_Mu_Gene <- data.frame(name=c("GNAT2","AMPD2","GSTM4","GSTM2","GSTM1","GSTM3","EPS8L3","CSF1","GSTMP1","LOC105737667","LOC100580720","LOC100586185","LOC100602332"),
                           start = c(1000000,1500000,2000000,2500000,3000000,3500000,4000000,4500000,5000000,5500000,6000000,6500000,7000000),
                           end = c(1300000,1800000,2300000,2800000,3300000,3800000,4300000,4800000,5300000,5800000,6300000,6800000,7300000),
                           strand = c(-1,1,1,1,1,1,-1,1,-1,1,1,1,-1),
                           col = c("white","white","orange","green","blue","purple","white","white","white","white","white",
                                   "white","white"))
NLEU_Mu_Gene_chr <- dna_seg(NLEU_Mu_Gene)
ann_NLEU_chr <- annotation(x1=middle(NLEU_Mu_Gene_chr), text=NLEU_Mu_Gene_chr$name)

Macaque_Mu_Gene <- data.frame(name=c("GNAT2","AMPD2","GSTM4","GSTM2","GSTM1","GSTM5","GSTM3","EPS8L3","CSF1","LOC100425553","LOC100423451","LOC100426893","GSTMP1"),
                              start = c(1000000,1500000,2000000,2500000,3000000,3500000,4000000,4500000,5000000,5500000,6000000,6500000,7000000),
                              end = c(1300000,1800000,2300000,2800000,3300000,3800000,4300000,4800000,5300000,5800000,6300000,6800000,7300000),
                              strand = c(-1,1,1,1,1,1,-1,-1,1,1,-1,1,-1),
                              col = c("white","white","orange","green","blue","brown","purple","white","white","white","white","white",
                                      "white"))
Macaque_Mu_Gene_chr <- dna_seg(Macaque_Mu_Gene)
ann_Macaque_chr <- annotation(x1=middle(Macaque_Mu_Gene_chr), text=Macaque_Mu_Gene_chr$name)

CEM_Mu_Gene <- data.frame(name=c("GNAT2","AMPD2","GSTM4","GSTM2","GSTM1","GSTM5","GSTM3","EPS8L3","CSF1","GSTMP1","GSTMP2","LOC102143654","LOC102120066","LOC102120591"),
                          start = c(1000000,1500000,2000000,2500000,3000000,3500000,4000000,4500000,5000000,5500000,6000000,6500000,7000000,7500000),
                          end = c(1300000,1800000,2300000,2800000,3300000,3800000,4300000,4800000,5300000,5800000,6300000,6800000,7300000,7800000),
                          strand = c(-1,1,1,1,1,1,-1,-1,1,-1,-1,-1,1,-1),
                          col = c("white","white","orange","green","blue","brown","purple","white","white","white","white","white",
                                  "white","white"))
CEM_Mu_Gene_chr <- dna_seg(CEM_Mu_Gene)
ann_CEM_chr <- annotation(x1=middle(CEM_Mu_Gene_chr), text=CEM_Mu_Gene_chr$name)

Baboon_Mu_Gene <- data.frame(name=c("GNAT2","AMPD2","GSTM4","GSTM2","GSTM5","GSTM3","EPS8L3","CSF1","GSTM1","LOC101012434","LOC102143654","LOC101006860","LOC101012412"),
                             start = c(1000000,1500000,2000000,2500000,3000000,3500000,4000000,4500000,5000000,5500000,6000000,6500000,7000000),
                             end = c(1300000,1800000,2300000,2800000,3300000,3800000,4300000,4800000,5300000,5800000,6300000,6800000,7300000),
                             strand = c(-1,1,1,1,1,-1,-1,1,1,1,-1,1,-1),
                             col = c("white","white","orange","green","brown","purple","white","white","white","white","white",
                                     "white","white"))
Baboon_Mu_Gene_chr <- dna_seg(Baboon_Mu_Gene)
ann_Baboon_chr <- annotation(x1=middle(Baboon_Mu_Gene_chr), text=Baboon_Mu_Gene_chr$name)

GreenMonkey_Mu_Gene <- data.frame(name=c("GNAT2","AMPD2","GSTM4","GSTM2","GSTM1","GSTM5","GSTM3","EPS8L3","CSF1","LOC103217154","LOC103218267","GSTMP1","LOC103240573","GSTMP2"),
                                  start = c(1000000,1500000,2000000,2500000,3000000,3500000,4000000,4500000,5000000,5500000,6000000,6500000,7000000,7500000),
                                  end = c(1300000,1800000,2300000,2800000,3300000,3800000,4300000,4800000,5300000,5800000,6300000,6800000,7300000,7800000),
                                  strand = c(-1,1,1,1,1,1,-1,-1,1,-1,-1,-1,1,-1),
                                  col = c("white","white","orange","green","blue","brown","purple","white","white","white","white","white",
                                          "white","white"))
GreenMonkey_Mu_Gene_chr <- dna_seg(GreenMonkey_Mu_Gene)
ann_GreenMonkey_chr <- annotation(x1=middle(GreenMonkey_Mu_Gene_chr), text=GreenMonkey_Mu_Gene_chr$name)

WTEM_Mu_Gene <- data.frame(name=c("GNAT2","AMPD2","GSTM1","GSTM3","GSTM5","GSTM4","EPS8L3","CSF1","LOC103795859","GSTMP1","LOC100411587","LOC100395646","LOC100385660","LOC100392641","LOC100386380","LOC100895885","LOC100413799","GSTMP2","LOC100390757","LOC100393909"),
                           start = c(1000000,1500000,2000000,2500000,3000000,3500000,4000000,4500000,5000000,5500000,6000000,6500000,7000000,7500000,8000000,8500000,9000000,9500000,10000000,10500000),
                           end = c(1300000,1800000,2300000,2800000,3300000,3800000,4300000,4800000,5300000,5800000,6300000,6800000,7300000,7800000,8300000,8800000,9300000,9800000,10300000,10800000),
                           strand = c(-1,1,1,1,1,-1,-1,1,-1,-1,-1,1,1,1,-1,1,-1,1,-1,1),
                           col = c("white","white","orange","brown","green","purple","white","white","white","white","white","white",
                                   "white","white","white","white","white","white","white","white"))
WTEM_Mu_Gene_chr <- dna_seg(WTEM_Mu_Gene)
ann_WTEM_chr <- annotation(x1=middle(WTEM_Mu_Gene_chr), text=WTEM_Mu_Gene_chr$name)

dna_segs <-list(Human_Mu_Gene_chr,Chimp_Mu_Gene_chr,Gorilla_Mu_Gene_chr,OrangUtan_Mu_Gene_chr,NLEU_Mu_Gene_chr,Macaque_Mu_Gene_chr,CEM_Mu_Gene_chr,Baboon_Mu_Gene_chr,GreenMonkey_Mu_Gene_chr,WTEM_Mu_Gene_chr)




xlims <- list(c(1000000,5300000,5500000,5800000,6000000,6300000,6500000,6800000,7000000,7300000),
              c(1000000,2300000,3000000,5300000,5500000,5800000,6000000,6300000,6500000,6800000,7000000,7300000),
              c(1000000,4800000,5000000,5300000,5500000,5800000,6000000,6300000,6500000,6800000),
              c(1000000,5300000,5500000,5800000,6000000,6300000,6500000,6800000,7000000,7300000),
              c(1000000,5300000,5000000,5300000,5500000,5800000,6000000,6300000,6500000,6800000,7000000,7300000),
              c(1000000,5300000,5500000,5800000,6000000,6300000,6500000,6800000,7000000,7300000),
              c(1000000,5300000,5500000,5800000,6000000,6300000,6500000,6800000,7000000,7300000,7500000,7800000),
              c(1000000,4800000,5000000,5300000,5500000,5800000,6000000,6300000,6500000,6800000,7000000,7300000),
              c(1000000,5300000,5500000,5800000,6000000,6300000,6500000,6800000,7000000,7300000,7500000,7800000),
              c(1000000,4800000,5000000,5300000,5500000,5800000,6000000,6300000,6500000,6800000,7000000,7300000,7500000,7800000,8000000,8300000,8500000,8800000,9000000,9300000,9500000,9800000,10000000,10300000,10500000,10800000))

tiff(filename = "~/detoxification/Analysis_in_R/genoplotR/Mu_gene_a.tiff", width = 1366, height = 685)
plot_gene_map(dna_segs=dna_segs,dna_seg_labels = c("Hsap","Ptro","Ggor","Pabe","Nleu","Mmul","Mfas","Panu","Csab","Cjac"), gene_type = "arrows" , arrow_head_len = Inf,annotations=list(ann_Human_chr,ann_Chimp_chr,ann_Gorilla_chr,ann_OrangUtan_chr,ann_NLEU_chr,ann_Macaque_chr,ann_CEM_chr,ann_Baboon_chr,ann_GreenMonkey_chr,ann_WTEM_chr),xlims = xlims ,limit_to_longest_dna_seg = FALSE,annotation_cex = 0.7)
dev.off()