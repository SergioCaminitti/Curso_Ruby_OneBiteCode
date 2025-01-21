# Condicional elseif

puts "Entre com o numero 1:"
num1 = gets.chomp.strip.to_f

puts "Entre com o numero 2:"
num2 = gets.chomp.strip.to_f

puts "Entre com a operação a ser realizada (+ - * /):"
operation = gets.chomp.strip

if operation == "+"
  result = num1 + num2
elsif operation == "-"
  result = num1 - num2
elsif operation == "*"
  result = num1 * num2
elsif operation == "/"
  result = num1 / num2
else
  puts "Operação inválida"
  result = 0
end

# Formatação de casas decimais em float
puts "Resultado é #{'%.2f' % result}" # %.2f - formata o número para 2 casas decimais