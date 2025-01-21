# Utilizando o While

# i = 0 
# while i <= 5
#   puts i
#   i += 1
# end

puts "Entre com o nome do filme:"
movieName = gets.chomp.strip.capitalize
qtdRating = 0
totalRating = 0
rating = 0
average = 0

while rating != -1
  puts "Informe a nota do filme (-1 para sair):"
  rating = gets.chomp.to_f

  if rating != -1
    totalRating += rating
    qtdRating += 1
    average = totalRating / qtdRating
  end
end

puts "Média das avaliações do filme #{movieName} é %.2f" % average #
puts "No total #{movieName} teve #{qtdRating} avaliações"