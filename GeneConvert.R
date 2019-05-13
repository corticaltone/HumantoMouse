HumGenes = read.table("/Users/SciCom/ScanPy/Hackathon/Macosko_cell_cycle_genes.txt", fill = TRUE, header = TRUE)
HumGenes2 <- data.frame(lapply(HumGenes, as.character), stringsAsFactors=FALSE)
IG1.S <- convertHumanGeneList(HumGenes2$IG1.S)
S <- convertHumanGeneList(HumGenes2$S)
G2.M <- convertHumanGeneList(HumGenes2$G2.M)
M <- convertHumanGeneList(HumGenes2$M)
M.G1 <- convertHumanGeneList(HumGenes2$M.G1)

length(S) <- 136
S[is.na(S)] <- ''
length(G2.M) <- 136
G2.M[is.na(G2.M)] <- ''
length(M) <- 136
M[is.na(M)] <- ''
length(M.G1) <- 136
M.G1[is.na(M.G1)] <- ''
cellCycle <- cbind(IG1.S,S,G2.M,M,M.G1)
write.table(cellCycle, "murineCellCycle.txt",sep="\t",row.names = FALSE)
