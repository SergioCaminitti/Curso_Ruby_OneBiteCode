# 1 - \/d+/ - Corresponde a qualquer dígito de 0 a 9.
# pode encontrar um ou mais dígitos, en sequencia ou não.

# 2 - /-?\d+/ - Corresponde a qualquer dígito de 0 a 9, podendo
# ou não ter um sinal de héfen (-) na frente.

string = "A temperatura é de 25 graus celcius, 30 graus fahrenheit e -5 graus."
numeros_inteiros = string.scan(/-?\d+/)
numeros_decimais = string.scan(/-?\d+\.\d+/)

puts "Números inteiros encontrados: #{numeros_inteiros.join(', ')}"
puts "Números decimais encontrados: #{numeros_decimais.join(', ')}"

# 2 - Extraindo e somando todos os números inteiros de uma string

string2 = "Eu tenho 3 maças, 2 laranjas e 5 bananas em minha casa"
numbers = string2.scan(/\d+/).map(&:to_i)
sum = numbers.sum
puts "Os números encontrados são: #{numbers.join(', ')}"
puts "A soma dos números é: #{sum}"
