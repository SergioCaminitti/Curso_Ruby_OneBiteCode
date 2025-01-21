require 'mongo'

# 1 - Configurando o BD
client = Mongo::Client.new(['localhost:27017'], :database => 'bd_ecommerce')

# 2 - Exclusão de dados
result = client[:products].delete_one({name: 'Smartphone'})

# 3 - Verificar o resultado da exclusão
if result.deleted_count > 0
    puts "Registro excluído com sucesso."
else
    puts "Nenhum documento foi excluído."
end
