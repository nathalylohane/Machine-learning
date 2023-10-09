### CARREGAR PACOTES
pacman::p_load(ccaPP, lsa, minerva, Rfast)

### CRIAR FUNÇÃO PARA RODAR VÁRIAS ASSOCIAÇÕES
multi.cor <- function(x, y) {
  corr = cor(x, y) # Correlação
  corrD = dcor(x, y) # Distance correlation
  cos = cosine(x, y) # Distância do Cosseno 
  maxCor = maxCorProj(x, y) # Maximal correlation
  MIC = mine(x, y) #  Maximal Information Coefficient
  Associações = as.data.frame(list(corr, corrD[4], cos, maxCor[1], MIC[1]))
  names(Associações) = c('Correlação', 'Distãncia', 'Cosseno', 'Máxima', 'MIC')
  return(Associações)
}

### EXEMPLO 1 LINEAR
x <- runif(1000, 25, 54)
y <- 30 - 1.9*x

plot(x, y) # Plotar o gráfico

corList <- multi.cor(x, y)
corList

### EXEMPLO 1.1 LINEAR
y1 <- y - runif(1000,27, 28)

plot(x, y1)

corList1 <- multi.cor(x, y1)
corList1

### EXEMPLO 1.2 LINEAR
y2 <- y - runif(1000, 25, 35)

plot(x, y2)

corList2 <- multi.cor(x, y2)
corList2

### EXEMPLO 2 QUADRÁTICA
k <- runif(1000, -25, 25)
l <- 5 - 1.7*k + k^2

plot(k, l)

corList <- multi.cor(k, l)
corList

### EXEMPLO 2.1 QUADRÁTICA
l1 <- l - runif(1000, -3, 3)

plot(k, l1)

corList3 <- multi.cor(k, l1)
corList3

### EXEMPLO 2.2 QUADRÁTICA
l2 <- l - runif(1000, -5, 5)

plot(k, l2)

corList4 <- multi.cor(k, l2)
corList4
