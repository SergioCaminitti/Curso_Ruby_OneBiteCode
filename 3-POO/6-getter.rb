class Game
    puts "Novo jogo criado #{self}"
    def initialize
        # Variáveis de instancia
        @name = "Pes"
        @genre = "Esporte"
        @multiplayer = true
        @versions = [2018,2019,2020]
        @price = 100
    end
    def to_s 
        "#{@name} - #{@genre} - #{@multiplayer} - #{@versions}"
    end
    # como fazer um método getter de uma variável de instancia
    def name
        @name
    end
    def genre
        @genre
    end
    def multiplayer
        @multiplayer
    end    
    def price
        @price
    end 
    def versions
        @versions
    end
end

game = Game.new
puts game.name, game.genre, game.multiplayer, game.price, game.versions