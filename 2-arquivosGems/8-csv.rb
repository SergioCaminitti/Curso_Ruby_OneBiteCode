require 'csv'

# 1 - Escrevendo dados em CSV
CSV.open("data/example.csv","w") do |csv|
    csv << ["Nome", "Idade", "Cidade"]
    csv << ["Alice", 25, "São Paulo"]
    csv << ["Bob", 30, "Rio de Janeiro"]
    csv << ["Carol", 28, "Belo Horizonte"]
end

# 2 - Lendo dados de um arquivo CSV
CSV.foreach("data/example.csv", headers: true) do |row|
    nome = row["Nome"]
    idade = row["Idade"]
    cidade = row["Cidade"]
    puts "Nome: #{nome}, Idade: #{idade} e Cidade: #{cidade}"
end

