# Tipos de operadores em Ruby

puts "Digite o primeiro numero:"
num1 = gets.chomp.to_i

puts "Digite o segundo numero:"
num2 = gets.chomp.to_i

# 1 - Operadores aritmeticos
sum = num1 + num2
subt =  num1 - num2
div = num1 / num2
mult = num1 * num2
mod = num1 % num2    # Resto da divisão
exp = num1 ** num2   # Exponenciação (potenciação)

puts sum, subt, div, mult, mod, exp

# 2 - Operadores de atribuição
num1 += 1
num1 -= 1
num1 /= 1
num1 *= 1

# 3 - Operadores de atribuição paralela
a,b = 5,4
a,b = b,a # Troca os valores de a e b

puts a,b

# 4 - Operadores de comparação retornam true or false
bigger = num1 > num2
smaller = num1 < num2
equal = num1 == num2
different = num1 != num2
bigger_equal = num1 >= num2
smaller_equal = num1 <= num2

# 5 - Operadores lógicos
puts ((2>4) and (3>1)) # false
puts ((2>4) or (3>1)) # true

# 6 - Operadores de especiais 
print (1..5).to_a # [1,2,3,4,5]
print ("a".."z").to_a # ["a","b","c",...,"z"]

# 7 - Precedencia de Operadores
puts 3 + 2 * 5
puts (3 + 2) * 5

# 8 - Operadore BInary Left Shit - complementando a variável (acresenta informações após as já existentes)
name = ""
name << "Fulano"
name << "Siclano"
puts name
