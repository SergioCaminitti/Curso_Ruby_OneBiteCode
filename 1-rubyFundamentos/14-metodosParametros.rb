# Criando métodos com parãmetros

# Método para imprimir strings
def fullName(fname, lname)
  puts "Nome completo: #{fname} #{lname}"
end

# fullName("Lucas", "Fernandes")

# Método para somar numeros
def sum(a,b)
  return a + b
end

# puts sum(4,5)

# Argumentos default num método
def address(country = "Brasil") # Se não for passado nenhum valor, o default é Brasil
  puts ( "Eu moro no #{country}")
end

# address()
# address("Alemanha") # Subescrevendo o valor default

# Avaliação do filme

def ratingMovie (qntRating)
  puts "Informe o nome do filme:"
  movieName = gets.chomp
  sum = 0
  for i in 1..qntRating
    puts "Entre com a #{i} nota para o filme #{movieName}:"
    note = gets.chomp.to_f
    sum += note
  end
puts "Média de avaliação do filme #{movieName} é: #{sum/qntRating}"
puts "Ele foi avaliado #{qntRating} vezes"
end

puts "Deseja fazer quantas avaliações:"
rating = gets.chomp.to_i

ratingMovie(rating)