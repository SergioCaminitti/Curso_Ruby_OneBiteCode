require 'date'
# Crie um programa que solicite ao usuário uma data no formato "dd/mm/aaaa" 
# e verifique se a entrada corresponde a este formato. Se sim, o programa 
# deve imprimir a data no formato "aaaa-mm-dd". Caso contrário, deve exibir
# uma mensagem de erro.

# \d: Corresponde a qualquer dígito de 0 a 9.

def checa_data (data)
    if data =~ /\d{2}\/\d{2}\/\d{4}/
        data = Date.parse(data)
        puts "Data válida"
        puts data.strftime("%F")
    else
        puts "Data inválida"
    end
end

puts "Digite uma data no formato dd/mm/aaaa: "
data = gets.chomp

data = checa_data(data)

# Resolução do Professor

def verificae_e_converter_data(string)
    if string =~ /\A(\d{2})\/(\d{2})\/(\d{4})\z/
        dia, mes, ano = string.scan(/\d+/)
        nova_data = "#{ano}-#{mes}-#{dia}"
        puts "Nova data: #{nova_data}"
    else
        puts "Data inválida, formato correto é dd/mm/aaaa"
    end
end

puts "Digite uma data no formato dd/mm/aaaa: "
data = gets.chomp

data = verificae_e_converter_data(data)