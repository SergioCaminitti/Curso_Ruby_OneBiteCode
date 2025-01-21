sum = lambda { |a,b| a + b} 
div = lambda { |a,b| a / b} 
sub = lambda { |a,b| a - b} 
mult = lambda { |a,b| a * b} 

# mult = lambda do |a,b|
#   a * b
# end

puts "Calculadora".center(50,"-")
# program = 0
# while program == 0

#   puts "Entre com o primeiro número:"
#   num1 = gets.chomp.to_f

#   puts "Entre com o segundo número:"
#   num2 = gets.chomp.to_f

#   puts "Escolha a operação:"
#   puts "(+) - Soma"
#   puts "(-) - Subtração"
#   puts "(*) - Multiplicação"
#   puts "(/) - Divisão"

#   operacao = gets.chomp

#   case operacao
#   when "+"
#     puts sum.call(num1, num2)
#   when "-"
#     puts sub.call(num1, num2)
#   when "*"
#     puts mult.call(num1, num2)
#   when "/"
#     puts div.call(num1, num2)
#   else
#     puts "Operação inválida"
#   end

#   puts "Para desligar a calculadora digite (1)"
#   temp = gets.chomp.to_i
#   if temp == 1
#     program = 1
#   end
# end

# Versão 2 - Utilizando função

def operation (funcion)
  puts "Digite o numero 1:"
  num1 = gets.chomp.to_f

  puts "Digite o numero 2:"
  num2 = gets.chomp.to_f

  result = funcion.call(num1,num2)
  puts "Resultado = #{result} ".center(30,"-")
end

begin
  puts "Para desligar a calculadora digite (s)"
  puts "Escolha a operação:"
  puts "(a) - Soma"
  puts "(b) - Subtração"
  puts "(c) - Multiplicação"
  puts "(d) - Divisão"
  choice = gets.chomp
  case choice
    when "a" then operation sum
    when "b" then operation sub
    when "c" then operation mult
    when "d" then operation div
  end    
end while choice != "s"

