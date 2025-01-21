# 1 - Criação do Array
movies = []
# puts movies.class 

movies2 = Array.new
# puts movies2.class

moviesTest = ["Homen Aranha", "Super Mario Bros"]
# puts movies_test

twoMovies = Array.new(2, "De Volta para o Futuro")
# puts twoMovies

# 2 - Utilizando Exponenciação
numbers = Array.new(5) {|x| x ** 2} # Preenchendo com o quadrado dos números 0 a 4
# puts numbers

# 3 - Array de numeros
num = Array.[](1,2,3)
# puts num

num2 = Array(1..5)
# puts num2

# 4 - Arrays com multiplos valores
movie = ["Homen Aranha", 2010, 50.00, true]
# puts movie

# 5 - Iterando itens do Array (for, while, each)
for mov in moviesTest
  puts mov
end

i = 0
while i < moviesTest.length
  puts moviesTest[i]
  i += 1
end

moviesTest.each {|a| puts a}

