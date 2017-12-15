# Load in `ggvis`
library(ggvis)

# Correlação entre tamanho e largura de sépalas
iris %>% ggvis(~Sepal.Length, ~Sepal.Width, fill = ~Species) %>% layer_points()

# Correlação entre tamanho e largura de pétalas
iris %>% ggvis(~Petal.Length, ~Petal.Width, fill = ~Species) %>% layer_points()

# Testando a  correlação entre  `Petal.Length` e `Petal.Width`
cor(iris$Petal.Length, iris$Petal.Width)

# Setando em X as espécies de Iris 
x=levels(iris$Species)

# Imprimindo a matriz de Correlação de "Setosa"
print(x[1])
cor(iris[iris$Species==x[1],1:4])

# Imprimindo a matriz de Correlação de "Versicolor"
print(x[2])
cor(iris[iris$Species==x[2],1:4])

# Imprimindo a matriz de Correlação de "Virginica"
print(x[3])
cor(iris[iris$Species==x[3],1:4])