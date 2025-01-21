# 1 - Diretorio atual
puts Dir.pwd

# 2 - Criando diretório
Dir.mkdir "teste"

# 3 - Listando arquivos e pastas
puts Dir.glob "*" 

# Di.glob("*") do |file|
#     puts file 
# end

# 4 - Listando apenas arquivos rb
puts Dir.glob "*.rb"

# 5 - navegando entre diretórios
Dir.chdir "data"
puts Dir.pwd
