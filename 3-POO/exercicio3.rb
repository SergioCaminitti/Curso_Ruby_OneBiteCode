class Veiculo
    attr_accessor :placa, :marca
    def initialize(placa, marca)
        @placa = placa
        @marca = marca
    end
    def to_s
        "#{@placa} - #{@marca}"
    end
    def exibir_detalhes
        if self.class == Carro
            type = "Carro"
        elsif self.class == Moto
            type = "Moto"
        else
            type = "Veículo"
        end
        puts " Veículo do tipo: #{type} ".center(30,"=")
        puts "Placa #{@placa}"
        puts "Marca #{@marca}"
    end
end

class Carro < Veiculo
    attr_accessor :qnt_portas
    def initialize(qnt_portas, placa, marca)
        super(placa, marca)
        @qnt_portas = qnt_portas
    end
    def to_s
        super + " - #{qnt_portas}"
    end
    def exibir_detalhes 
        super
        puts "Quantidade de portas: #{qnt_portas}"
    end
end
# def exibir_detalhes2(veiculo)
#     puts veiculo.to_s
# end
class Moto < Veiculo
    attr_accessor :cilindradas
    def initialize(cilindradas, placa, marca)
        super(placa, marca)
        @cilindradas = cilindradas
    end
    def to_s
        super + " - #{cilindradas}"
    end
    def exibir_detalhes 
        super
        puts "Cilindradas: #{cilindradas}"
    end
end

uno = Carro.new(4, "123", "Fiat")
uno.exibir_detalhes
# exibir_detalhes2(uno)

cg160 = Moto.new(160, "456", "Honda")
cg160.exibir_detalhes
# exibir_detalhes2(cg160)
