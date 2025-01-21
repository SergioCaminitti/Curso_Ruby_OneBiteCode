require 'mongo'

# 1 - Configurando o BD
client = Mongo::Client.new(['localhost:27017'], :database => 'bd_ecommerce')

# 2 - Atualização de dados (update_one ou update_many)

result = client [:products].update_one({name: 'Smartphone'},{
    "$set" => {category: {name: 'Dispositivos Móveis'}}
})

# 3 - Verificar o resultado da atualização

if result.modified_count > 0
    puts "Dados atualizados com sucesso."
else
    puts "Nenhum documento foi atualizado."
end