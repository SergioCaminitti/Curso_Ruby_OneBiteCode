# Operaçõpes com arrays

movies = ["Homem Aranha", "Barbie", "Batman"]

# 1 - Indexação e Atribuição
# puts movies [0] # primeiro filme
# puts movies [-1] # primeiro filme
# puts movies [1,2]
movies [2] = "Batman vs Superman"
# puts movies
movies << "Avatar"
# puts movies

# Métodos úteis
puts movies.length # Tamanho do Array
puts movies.first # Primeiro elemento
puts movies.last # Ultimo elemento

movies.append("Avatar 2") # Adiciona um elemento ao final do Array
puts movies
puts movies.sort() # Ordena o Array
movies.shuffle() # Embaralha o Array

# Recuperar o indice e o valor
movies.each_with_index {|value, index| puts "#{index}-#{value}"}