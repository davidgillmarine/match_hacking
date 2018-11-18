library(Matching)
library(dplyr)
data(lalonde)
names(lalonde)
X <- lalonde %>% 
  dplyr::select(age,educ,black,hisp,married,re74,u74,re75,u75) %>% 
  mutate_at(vars(re74:u75),funs(./1000))
Y <- lalonde$re78/1000
Tr <- lalonde$treat
M <- 1
Z <- X
N <- nrow(X)
Kx <- ncol(X)
Kz <- ncol(Z)
estimand <- 0
All <- estimand
version <-  "standard"
BiasAdj <- 1
weights <- rep(1,length(Y))
weight <-  weights
ccc <- 1e-05 # tolerance
Var.calc <- 0
iot.t <- Tr * weight
iot.c <- 1 - Tr
SAMPLE <- 0

#run match
match.test<-Matching::Match(Y=Y, Tr,X, M=M, replace=T, ties=T, BiasAdjust = T)
setwd("C:/Users/david/Dropbox/data/analysis/R code/match_hacking/git")
source("C:/Users/david/Dropbox/data/analysis/R code/match_hacking/git/Rloop_edit.R")
match.test$est.noadj;match.test$est;match.test$se;match.test$se.standard;match.test$se.cond
m.out$est.noadj;m.out$est;m.out$se;m.out$se.standard;m.out$se.cond
summary(match.test)
#summary(X);summary(Y)

summary(match.test)
#summary(X);summary(Y)


