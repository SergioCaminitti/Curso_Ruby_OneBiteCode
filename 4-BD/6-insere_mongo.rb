require 'mongo'

# 1 - Configurando o BD
client = Mongo::Client.new(['localhost:27017'], :database => 'bd_ecommerce')

# 2 - Inserção de dados de produtos e categorias

result = client [:products].insert_one({
    'name' => 'Smartphone',
    'category' => {
        'name' => 'Eletrônicos'
    }
})
result = client [:products].insert_one({
    'name' => 'Notebook',
    'category' => {
        'name' => 'Eletrônicos'
    }
})

# 3 - Verificação do resultado de inserção

if result.successful?
    puts "Dados inseridos com sucesso. Id: #{result.inserted_id}"
else
    puts "Falha ao inserir dados"
end
