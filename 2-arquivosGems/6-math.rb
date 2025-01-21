# puts Math.class
# # puts Math.methods.sort
# puts Math.sqrt(9)
# puts Math.sin(90)
# puts Math::PI

# 1 - Calculo area de um cirdulo

def calcularArea (raio)
    return Math::PI * raio**2
end

# 2 - Calculo perímetro de um círculo

def calcularPerimetro (raio)   
    return 2 * Math::PI * raio
end

# 3 - entrada de dados

puts "Digite o raio do círculo: "
raio = gets.chomp.to_f

# 4 - Executando a função

area = calcularArea(raio)
perimetro = calcularPerimetro(raio)

# 5 - Exibindo

puts "A área do círculo com raio de #{raio} é de #{area.round(2)}"
puts "A área do perímetro com raio de #{raio} é de #{perimetro.round(2)}"