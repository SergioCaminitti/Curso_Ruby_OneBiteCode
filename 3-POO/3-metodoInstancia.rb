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

    def information
        puts "O Jogo é do genero #{@genre} e as versões: #{@versions}"
    end

    def tecnicalSheet
        puts " Dados do jogo ".center(30,"=")
        puts "Nome do Jogo: #{@name}"
        puts "Gênero: #{@genre}"
        puts "Preço: #{@price}"
    end
end

game = Game.new

puts game.information
puts game.tecnicalSheet
