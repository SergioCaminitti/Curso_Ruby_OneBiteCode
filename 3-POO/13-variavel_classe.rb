class Game
    attr_accessor :name, :genre, :price
    attr_reader :multiplayer, :versions

    # Variável de classe para rastrear o número de jogos criados
    @@num_jogos = 0

    def initialize(name, genre, multiplayer, versions, price)
        @name = name
        @genre = genre
        @multiplayer = multiplayer
        @versions = versions
        @price = price
        puts "Novo jogo criado"

        # Incrementa o contados de jogos criados
        @@num_jogos += 1
    end
    def to_s 
        "#{@name} - #{@genre} - #{@multiplayer} - #{@versions}"
    end
    def tecnicalSheet
        puts " Dados do jogo ".center(30,"=")
        puts "Nome do Jogo: #{@name}"
        puts "Gênero: #{@genre}"
        puts "Preço: #{@price}"
    end

    # Metodo de classe para obter a quantidade de jogos no total
    def self.total_games
        @@num_jogos
    end
end


game1 = Game.new("Fifa", "Esporte", true, [2018,2019,2020], 100)
puts game1.tecnicalSheet

game2 = Game.new("GTA", "Ação", false, [2018,2019,2020], 200)
puts game2.tecnicalSheet

game3 = Game.new("Elden Ring", "RPG", true, [2022], 300)
puts game3.tecnicalSheet

puts "Total de jogos criados: #{Game.total_games}"