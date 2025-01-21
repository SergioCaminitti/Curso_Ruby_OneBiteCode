# For em Ruby

# 1 - FOR
for i in 1..5
  # puts i
end

# 2 - Each
(1..5).each do |i|
  # puts i
end

moviesList = ["Avatar", "Matrix", "Barbie", "Batman"]

# 1 - Iterando valores de um array
moviesList.each do |movie| # |movie| é uma variável temporária que armazena o valor do array
  # puts movie
end

# 2 - Utilizando o break
moviesList.each do |movie|
  break if movie == "Batman" # Para a execução do loop quando encontrar o valor "Batman"
  # puts movie
end

# 3 - Utilizando o next
moviesList.each do |movie|
  next if movie == "Matrix" # Pula a execução do loop quando encontrar o valor "Batman"
  # puts movie
end

# 4 - Avaliação do Filme
puts "Entre com o nome do filme:"
movieName = gets.chomp

puts "Digite quantas avaliações deseja fazer no filme:"
movieRating = gets.chomp.to_i

sum = 0
movieRating.times do 
  puts "Entre com a nota do filme:"
  note = gets.chomp.to_f
  sum += note
end
average = sum / movieRating

puts "Média de avaliações do filme #{movieName} é de %.2f" %average
puts "Ele foi avaliado #{movieRating} vezes"
