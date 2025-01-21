# Operações com string em ruby

# Dados do filme
name = "De volta para o futuro"
description = "Filme de uma ficção científica"
description2 = <<Text
  O filme #{name} é um clássico de
  1985 que trata de viagem no tempo.
Text

# 1 - Introdução
puts description [0] # f
puts description [-1] # a - posição negativa, começa do final da string
puts description [0, 6] # Filme - range de caracteres da string com 6 posições
puts description [0..6] # Filme d - range de caracteres da string (0 a 6) - 7 posições
puts description.slice(0) # f - método slice para pegar a primeira posição da string
puts description.slice(0,4) # Film - método slice para pegar a primeira posição da string com 4 posições

# 2 -  Quebrando uma string
print description.split() # ["Filme", "de", "uma", "ficção", "científica"]
print "\n"
print description.split("uma") # ["Filme de ", " ficção científica"] - quebra a string no ponto de corte "uma"
print "\n"

# 3 - Quebrando em caracteres
print description.chars # ["F", "i", "l", "m", "e", " ", "d", "e", " ", "u", "m",
# "a", " ", "f", "i", "c", "ç", "ã", "o", " ", "c", "i", "e", "n", "t", "í", "f", "i", "c", "a"]
print "\n"

# 4 - Conta ocorrencia de caracteres
puts description.count("a")

# 5 - Maiúsco e Minúsculo 
puts description.upcase
puts description.downcase
puts description.capitalize # Primeira letra maiúscula
puts description.swapcase # Inverte maiúscula e minúscula
puts description.chop # Remove a última letra

# 6 - Verifica o índice
puts description.index("ficção")

# 7 - Alterar palavras
puts description.gsub("ficção", "fantasia") # Filme de uma fantasia científica

# 8 - Outras operações
puts "Ruby".center(10, "-") # ---Ruby--- - centraliza a string com o caractere informado
puts "Ruby".center(20, "-") 
puts "Ruby".center(30, "-") 

puts "=" * 20 # ==================== - repete o caractere informado a quantidade de vezes informada

puts description.include?("Filme") # true - verifica se a string contém a palavra informada
puts "     Ruby".lstrip # Remove espaços a esquerda
puts "Ruby     ".rstrip # Remove espaços a direita
puts "      Ruby     ".strip # Remove espaços a esquerda e a direita. (GOAT)

