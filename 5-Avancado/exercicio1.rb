require 'date'

def calcular_data_entrega(data_envio, tempo_entrega)
    dt_initial = data_envio
    while tempo_entrega >= 0
        if !(dt_initial.sunday?) || !(dt_initial.saturday?)# checa se é dia útil
            data_envio += 1
            tempo_entrega -= 1
        end
        dt_initial += 1
    end
    return data_envio
end

data =  Date.new(2025, 1, 17)
temp_entreg = 5
dt_entrega = calcular_data_entrega(data, temp_entreg)

puts " Calculo do tempo de entrega ".center(50,"=")
puts "Pedido feito em: #{data}, com tempo de entrega de #{temp_entreg} dias úteis"
puts "Data de entrega: #{dt_entrega}"

# Resolução Prof - 1

def calcular_data_entrega(data_envio, tempo_entrega)
    # convertendo a data_envio para tipo date
    data = Date.parse(data_envio)
    dias_uteis = 0
    while dias_uteis < tempo_entrega
        data += 1
        dias_uteis += 1 unless data.saturday? || data.sunday?
    end
    data.to_s
end

data_envio = "2023-11-01"
tempo_entrega_dias = 7
data_estimada_entrega = calcular_data_entrega(data_envio, tempo_entrega_dias)
puts "A data estimada de entrega é: #{data_estimada_entrega}"