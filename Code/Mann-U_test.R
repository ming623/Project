Detox_biosyn <- data.frame(Number = c(1.25,1.08,0.2,1.28,0.59,0.88,1.12,0.68,1.2,0.62,0.95,0.88),
                           Group = c("D","D","D","D","D","D","D","B","B","D","D","B"))
attach(Detox_biosyn)
wilcox.test(Number ~ Group, mu = 0,alt = "two.sided",conf.int = T,conf.level = 0.95,exact = TRUE, paired = FALSE)

boxplot(Number ~ Group)
