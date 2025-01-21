require 'mongo'

# 1 - Configurando o BD
client = Mongo::Client.new(['localhost:27017'], :database => 'bd_ecommerce')

# 2 - Leitura de dados

collection = client[:products]
documents = collection.find

# 3 - Exibindo os dados
puts "Documentos"
documents.each do |document|
    puts "Nome: #{document[:name]}, Categoria: #{document[:category][:name]}"
end

