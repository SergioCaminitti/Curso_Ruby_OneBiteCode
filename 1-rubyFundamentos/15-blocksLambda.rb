# 1 - Blocks
# Blocos são trechos anônimos de código que aceitam entradas
# de argumentos e retornam um determinado valor,
# em outras limguagens são conhecidos como funções

def hello
  yield # yield é uma palavra reservada que chama o bloco
end

# hello{ puts 'Hello, World!'}
# hello{ puts 'Hello, World 2!'}
# hello{ puts 'Hello, World 3!'}

def oneTwoThree
  yield 1
  yield 2
  yield 3
end

# oneTwoThree{ |number| puts number * 10}  # faz a multiplicação de 10 para cada número

# 2 - Função de potência de um número
power = lambda { |num| num ** 2} # lambda é uma função anônima
# puts power.call(4) # chama a função lambda

# 3 - Função que verifica se o número é par
pair = lambda { |x| x % 2 == 0} # Verifica se o número é par pelo resto da divisão
# puts pair.call(5)
# puts pair.call(6)

# 4 - Função que divide um número por outro
divNum = lambda { |x, y| x / y} # Divide um número por outro
# puts divNum.call(10,2) # 5


