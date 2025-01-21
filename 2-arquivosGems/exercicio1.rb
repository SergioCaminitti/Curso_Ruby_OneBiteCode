require './areaModulo'

def operationSquare ()
    puts "Digite o valor de um lado:"
    side = gets.chomp.to_f
    
    result = AreaCalculation.square(side)
    puts " Área = #{result} ".center(20,"-")
end
def operationRectangle ()
    puts "Digite o valor da base:"
    length = gets.chomp.to_f

    puts "Digite o valor da altura:"
    height = gets.chomp.to_f
    
    result = AreaCalculation.rectangle(length, height)
    puts " Área = #{result} ".center(20,"-")
end
begin
    puts "Calculo de Área usando modulo"
    puts "vc quer calcular:"
    puts "1 - Quadrado"
    puts "2 - Retangulo"
    puts "0 - Sair"
    choice = gets.chomp.to_i
    case choice
        when 1 then operationSquare
        when 2 then operationRectangle
    end    
end while choice != 0