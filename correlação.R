## CORRELAÇÃO COM R ##
# PRIMEIRO, VAMOS CARREGAR OS PACOTES
pacman::p_load(corrplot, dplyr, ggplot2)

# BASE DE DADOS CARS
cars2 <- cars

# TABELA DE CORRELAÇÃO COM TODAS AS VARIÁVEIS 
cor(cars2)

# GRÁFICOS DE DISPERSÃO PAREADOS DAS VARIÁVEIS #
pairs(cars2)

# CORRPLOT DAS VARIÁVEIS #
carsCor <- cor(cars2) # Tabela de correlações
corrplot(carsCor, method = "number", order = 'alphabet')
corrplot(carsCor, order = 'alphabet') 
corrplot(carsCor, method = "square", order = 'AOE')
