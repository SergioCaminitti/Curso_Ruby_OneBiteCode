class Game
    puts "Novo jogo criado #{self}"
    def initialize
        @name = "Pes"
        @genre = "Esporte"
        @multiplayer = true
        @versions = [2018,2019,2020]
        @price = 100
    end
    def to_s 
        "#{@name} - #{@genre} - #{@multiplayer} - #{@versions}"
    end
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
    # como fazer um método setter de uma variável de instancia
    def name=(newName)
        @name = newName
    end
    def genre = (newGenre)
        @genre = newGenre
    end
    def multiplayer = (newMultiplayer)
        @multiplayer = newMultiplayer
    end
    def price = (newPrice)
        @price = newPrice
    end
    def versions = (newVersions)
        @versions = newVersions
    end
end

game = Game.new
puts game.name
game.name = "Fifa"
puts game.name