puts "Calculadora de IMC"

puts "Entre com a sua altura (cm): "
height = gets.chomp.to_f

puts "Entre com o seu peso (Kg): "
weight = gets.chomp.to_f

imc = weight / (height /100) ** 2

puts "Seu IMC é: #{imc}"

if imc < 16
  puts "Magreza grave"
end
if imc > 16 and imc < 17
  puts "Magreza moderada"
end
if imc > 17 and imc < 18.5
  puts "Magreza leve"
end
if imc > 18.5 and imc < 25
  puts "Saudável"
end
if imc > 25 and imc < 30
  puts "Sobrepeso"
end
if imc > 30 and imc < 35
  puts "Obesidade grau 1"
end
if imc > 35 and imc < 40
  puts "Obesidade grau 2"
end
if imc > 40
  puts "Obesidade grau 3"
end