library("knitr")
setwd("submission")

## create paper
knit2pdf("paper.Rnw")

## get R code
purl("paper.Rnw", output = "Code/code.R")
