require 'csv'

puts "Digite o nome:"
name = gets.chomp.upcase

puts "Digite a idade:"
age = gets.chomp.to_i

puts "Digite a cidade:"
city = gets.chomp.upcase

#criando um arquivo csv
# CSV.open("data/contatos.csv","w") do |csv|
#     csv << ["NAME", "AGE", "CITY"]
#     csv << [name, age, city]
# end

# adicionando linhas no csv
CSV.open("data/contatos.csv","a") do |csv|
    csv << [name, age, city]
end