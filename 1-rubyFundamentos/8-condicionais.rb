# Condicional if

# a = 10
# b = 20

# if a > b 
#   puts "#{a} é maior que #{b}"
# else
#   puts "#{b} é maior que #{a}"
# end

puts "Entre com o nome do filme:"
name = gets.chomp.capitalize.strip

puts "Entre com o ano de lançamento do filme:"
yearLaunch = gets.chomp.strip.to_i

puts "Entre com a nota de classificação do filme:"
classification = gets.chomp.strip.to_f

if classification >= 8.0 and yearLaunch > 2015
  puts "O filme #{name} é bom! Recomendo assisti-lo"
else
  puts "O filme #{name} ainda não atingiu uma nota boa, por isso não recomendo assisti-lo"
end