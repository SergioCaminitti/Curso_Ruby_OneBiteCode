# Metodos em Ruby

# 1 - Método para imprimir uma string
def Hello
puts "Hello Word"
end

# Hello()

# 2 - Método para somar dois números
def sum()
  puts (5 + 4)
end

# sum()

# 3 - Método para cadastrar filme
def createMovie
  puts "Entre com o nome do filme:"
  name = gets.chomp
  puts "Entre com o ano de lançamento do filme:"
  yearLaunch = gets.chomp.to_i
  puts "Entre com o preço do filme"
  price = gets.chomp.to_f

  puts "#{name} - #{price}"
end

# createMovie()
