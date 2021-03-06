# Load in `ggvis`
library(ggvis)

# Correla��o entre tamanho e largura de s�palas
iris %>% ggvis(~Sepal.Length, ~Sepal.Width, fill = ~Species) %>% layer_points()

# Correla��o entre tamanho e largura de p�talas
iris %>% ggvis(~Petal.Length, ~Petal.Width, fill = ~Species) %>% layer_points()

# Testando a  correla��o entre  `Petal.Length` e `Petal.Width`
cor(iris$Petal.Length, iris$Petal.Width)

# Setando em X as esp�cies de Iris 
x=levels(iris$Species)

# Imprimindo a matriz de Correla��o de "Setosa"
print(x[1])
cor(iris[iris$Species==x[1],1:4])

# Imprimindo a matriz de Correla��o de "Versicolor"
print(x[2])
cor(iris[iris$Species==x[2],1:4])

# Imprimindo a matriz de Correla��o de "Virginica"
print(x[3])
cor(iris[iris$Species==x[3],1:4])