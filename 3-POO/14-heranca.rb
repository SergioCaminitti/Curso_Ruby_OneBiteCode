class Game
    attr_accessor :name, :genre, :price
    attr_reader :multiplayer, :versions

    def initialize(name, genre, multiplayer, versions, price)
        @name = name
        @genre = genre
        @multiplayer = multiplayer
        @versions = versions
        @price = price
        puts "Novo jogo criado"
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
end

# Herança é um conceito da POO que permite que uma classe herde 
# atributos e métodos de outra classe.
class DownloadableGame < Game
    attr_accessor :download_size

    def initialize(name, genre, multiplayer, versions, price, download_size)
        super(name, genre, multiplayer, versions, price)
        @download_size = download_size
    end
end


game1 = Game.new("Fifa", "Esporte", true, [2018,2019,2020], 100)
puts game1.tecnicalSheet

game2 = DownloadableGame.new("Mortal Kombat", "Luta", true, [2018,2019,2020], 150, 60)
puts game2.tecnicalSheet