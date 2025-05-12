# Machine Learning com R – Classificação e Exploração Espacial

Este repositório reúne os scripts desenvolvidos durante a disciplina de Machine Learning, com foco em classificação, IA explicável, balanceamento de dados e exploração espacial. As atividades foram desenvolvidas em **R**, com aplicação de modelos supervisionados e não-supervisonados e técnicas de visualização e avaliação de desempenho. 

---

## Objetivos do Projeto

- Aplicar técnicas de aprendizado com diferentes abordagens
- Avaliar modelos com métricas robustas e realizar testes estatísticos
- Trabalhar com dados desbalanceados e aplicar métodos de correção
- Criar visualizações interpretáveis e relatórios em RMarkdown
- Explorar padrões espaciais e regras de associação entre variáveis

---

##  Técnicas aplicadas e sua importância

###  **Modelos de Classificação com `caret`**
- Automatiza o treinamento e validação cruzada de diversos algoritmos
- Permite selecionar o melhor modelo com base em métricas de desempenho

###  **IA Explicável (XAI)**
- Utilização de árvore de decisão para facilitar a interpretação de modelos
- Visualização das divisões e da lógica de classificação

###  **Aprendizado com Custo**
- Atribui penalidades diferentes para erros de classificação
- Útil em contextos com classes desbalanceadas ou custo desigual de erro

### **Balanceamento de Dados**
- Técnicas como oversampling, undersampling e SMOTE aplicadas para corrigir desequilíbrios
- Melhora a generalização dos modelos em dados reais

### **Regras de Associação**
- Geração de padrões do tipo “se-então” entre atributos de uma base
- Método útil para extração de conhecimento em grandes volumes de dados

### **Exploração Espacial com RMarkdown**
- Relatório analítico integrando modelagem, gráficos e texto explicativo

---

## Estrutura do Repositório

| Script / Arquivo              | Objetivo / Conteúdo Principal                                              |
|-------------------------------|---------------------------------------------------------------------------|
| `CARET.R`                     | Treinamento e validação de modelos com o pacote `caret`                   |
| `IAexplicavel.Rmd`            | Criação de árvore de decisão e explicação visual com RMarkdown            |
| `aprendizagemcomcusto.R`      | Aplicação de penalidades para erros de classificação                      |
| `balanceamento.R`             | Correção de classes desbalanceadas com SMOTE e outros métodos             |
| `correlação.R`                | Análise da correlação entre variáveis preditoras                          |
| `exploracaoespacial.Rmd`      | Análise exploratória com componente geográfica, com relatório explicativo |
| `implementacaocaret.R`        | Fluxo completo de treinamento, avaliação e otimização de modelos          |
| `metricaclassificacao.R`      | Cálculo de acurácia, precisão, recall e F1-score                          |
| `qui-quadrado.R`              | Testes de independência entre variáveis categóricas                       |
| `regras de associação.R`      | Geração de regras com `arules`                                            |
| `teste de associação.R`       | Testes estatísticos entre atributos categóricos                           |

---

## O que este repositório demonstra

Este projeto representa a aplicação prática de diversas técnicas avançadas de análise de dados, úteis tanto na pesquisa acadêmica quanto em contextos aplicados:

- **Treinamento e avaliação de modelos preditivos**
- **Criação de fluxos de machine learning reproduzíveis**
- **Interpretação visual e textual de modelos com IA explicável**
- **Organização de dados espaciais e relatórios interativos**

---

##  Tecnologias Utilizadas

- Linguagem: **R**
- Pacotes principais: `caret`, `rpart`, `ggplot2`, `arules`, `e1071`, `ROSE`, `rmarkdown`, `knitr`

---

## Sobre mim

Sou Cientista Política e mestranda pela UFPE, com foco em análise de dados aplicados a políticas públicas, ESG e inteligência política. Tenho experiência com entrevistas, observação participantes, análise qualitativa e quantitativa de dados, e uso dos dados para gerar impacto institucional e orientar decisões estratégicas.
---

## Licença

Este projeto é de uso educacional e está licenciado sob os termos da [MIT License](LICENSE).
