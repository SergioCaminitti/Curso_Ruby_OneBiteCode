require "faker"
require "csv"

# puts Faker.class
# puts Faker::Name.class

# puts Faker::Name.name

# puts Faker::Name.first_name
# puts Faker::Name.last_name


# puts Faker::Music.instrument
# puts Faker::Sports::Football.player

dados = []

# Armazena os dados 20 vezes
20.times do
    nome = Faker::Name.name
    email = Faker::Internet.email
    telefone = Faker::PhoneNumber.phone_number

    dados << [nome, email, telefone]
end

# Exportar para CSV

arquivoCsv = "data/dadosFaker.csv" 
CSV.open(arquivoCsv, "w") do |csv|
    csv << ["Nome", "E-Mail", "Telefone"]
    dados.each do |dado|
        csv << dado
    end
end

puts "Dados salvos no arquivo #{arquivoCsv}"
