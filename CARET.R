# pacotes
pacman::p_load(
  caret, ggplot2, plotly, rattle
)

# Carregando a base de dados de casos graves de COVID em Recife
casos_graves_covid <- read.csv2("http://dados.recife.pe.gov.br/dataset/2b5ee58d-9535-4d80-ab32-f63fd475346e/resource/93f4e8c2-430f-4142-86b3-96dab4905b4e/download/casosgravescovid.csv", stringsAsFactors = T)

view(casos_graves_covid)

set.seed(3)

# Pré-processamento
particaoCOVID = createDataPartition(1:nrow(casos_graves_covid), p=0.7) # cria a partição 70-30
treinoCOVID = casos_graves_covid[particaoCOVID$Resample1, ] # treino
testeCOVID = casos_graves_covid[-particaoCOVID$Resample1, ] # - treino = teste

# Controle de treinamento
train.control <- trainControl(method = "cv", number = 50, verboseIter = T) # controle de treino

# Mineração e predição com Árvores de Decisão
## Árvore de Decisão
COVID_RPART <- train(
  classificacao_final ~ evolucao + sexo + idade,
  data = treinoCOVID, 
  method = "rpart", 
  trControl = train.control,
  tuneGrid = expand.grid(cp = c(0.00362, runif(19, 0, 0.25)))
)

plot(COVID_RPART)

fancyRpartPlot(COVID_RPART$finalModel) # desenho da árvore

plot(varImp(COVID_RPART)) # importância das variáveis

predicaoTree = predict(COVID_RPART, newdata = testeCOVID)

postResample(testeCOVID[ , 16], predicaoTree)# teste de performance da Árvore Condicional

base_avaliacao <- data.frame(
  Observado = testeCOVID[ , 16],
  Predição = predicaoTree)

predicao_arvore <- base_avaliacao %>% 
  ggplot(aes(x=Observado, y=Predição)) + 
  geom_point() + # cria os pontos
  geom_smooth() # cria a curva de associação
ggplotly(predicao_arvore)