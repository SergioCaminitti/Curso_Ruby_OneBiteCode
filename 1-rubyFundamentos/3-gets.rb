# Recebendo Dados

puts "informe o nome do filme:"
name = gets.chomp # O gets.chomp sempre retorna uma string
puts name

# puts name.class

puts "informe o ano do filme:"
yearLaunch = gets.chomp.to_i # Fazendo a conversão para inteiro
puts yearLaunch
# puts yearLaunch.class

puts "informe o preço do filme:"
price = gets.chomp.to_f # Fazendo a conversão para float
puts price
puts price.class