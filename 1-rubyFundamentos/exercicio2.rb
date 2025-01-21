# Gerador de Email
puts "Gerador de E-mail".center(30, "-") 

puts "Entre com seu nome:"
name = gets.chomp.strip.downcase

puts "Entre com seu sobrenome:"
lastName = gets.chomp.strip.downcase

puts "Entre o da sua empresa:"
company = gets.chomp.strip.downcase

email = name + "." + lastName + "@" + company + ".com"

puts "Seu novo E-mail é: " + email
