# Utilizando Strings em Ruby

# Dados de um filme
name = "Star Wars"
name2 = "star wars"

# Ruby é case sensitive
puts name == name2 # false

description = "Star Wars is a space opera franchise"
description2 = <<Text
  O filme #{name} é um clássico de
  1977 que trata de uma guerra no espaço.
Text

puts description2

# Tamanho da String
puts description.length
puts description.size