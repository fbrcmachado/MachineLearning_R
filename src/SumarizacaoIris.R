#Dataset
iris

#Retorna as 5 primeiras linhas do DataSet
head(iris)

#Retorna a estrutura do Dataset
str(iris)

#Por quantidade de Especies
# Divis�o bruta
table(iris$Species) 

# Divis�o percentual
round(prop.table(table(iris$Species)) * 100, digits = 3)


# Sumario de Iris
summary(iris) 

# Sumario de dados dec Petal.Width e Sepal.Width
summary(iris[c("Petal.Width", "Sepal.Width")])
