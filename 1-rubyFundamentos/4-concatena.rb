# Concatenando Valores

# Recebendo valores
puts "informe o nome do filme:"
name = gets.chomp

puts "informe o ano do filme:"
yearLaunch = gets.chomp.to_i
  
puts "informe o preço do filme:"
price = gets.chomp.to_f 

# Concatenando valores
# puts "Nome do filme: " + name
# puts "Ano de lançamento: " + yearLaunch.to_s
# puts "Preço do filme: " + price.to_s

# 2 - Utilizando o #{}
# puts "Nome do filme: #{name}"
# puts "Ano de lançamento: #{yearLaunch}"
# puts "Preço do filme: #{price}"  

# 3 - Utilizando um único puts
# puts "Nome do filme: #{name}, ano de lançamento: #{yearLaunch}, preço do filme: #{price}"
# puts "Nome do filme: #{name}\nAno de lançamento: #{yearLaunch}\nPreço do filme: #{price}"

# 4 - Utilizando uma String Multilinha
puts <<~MULTILINE_STRING
  Nome do filme: #{name}
  Ano de Lançamento: #{yearLaunch}
  Preço do filme: #{price} 
MULTILINE_STRING