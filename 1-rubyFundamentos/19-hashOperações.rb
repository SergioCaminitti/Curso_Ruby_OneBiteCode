movie = {:name => "Batman", :year => 2023}
puts movie

# 1 - Métodos úteis
puts movie.size # Tamanho do hash
puts movie.length # Tamanho do hash
puts movie.to_a # Converte o hash em um array
puts movie.min # Retorna o menor valor do hash
puts movie.max # Retorna o maior valor do hash
puts movie.fetch(:name) # Retorna o valor da chave
puts movie.fetch(:year) # Retorna o valor da chave

# 2 - Adicionando uma nova chave com valor
movie.store(:genre, "Aventura")
movie.store(:rating, 5.0)
# puts movie

# 3 - Excluir uma chave
movie.delete(:rating)
# puts movie

# 4 - Limpar itens do hash
movie.clear()
# puts movie



