# Método construtor, feito toda vez que um novo objeto é criado
class Game
    def initialize
        puts "Novo jogo criado"
        # Variáveis de instancia
        @name = "Pes"
        @genre = "Esporte"
        @multiplayer = true
        @versions = [2018,2019,2020]
        @price = 100
    end
end

game1 = Game.new
puts game1
p game1