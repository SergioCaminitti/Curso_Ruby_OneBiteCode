class Game
    # attr_reader :name, :genre, :price # cria os métodos de leitura
    # attr_writer :name, :genre, :price # cria os métodos de escrita
    attr_accessor :name, :genre, :price
    attr_reader :multiplayer, :versions # cria os métodos de leitura e escrita
    def initialize
        @name = "Pes"
        @genre = "Esporte"
        @multiplayer = true
        @versions = [2018,2019,2020]
        @price = 100
        puts "Novo jogo criado #{self}"
    end
    def to_s 
        "#{@name} - #{@genre} - #{@multiplayer} - #{@versions}"
    end
end

game = Game.new

puts game.name
game.name = "Pão com Manga"
puts game.name