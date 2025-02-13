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

    # Método de classe para calcular o preço com desconto
    def self.discounted_price(price, discounted_percentage)
        price -= (price * (discounted_percentage.to_f / 100))
    end

end


game1 = Game.new("Fifa", "Esporte", true, [2018,2019,2020], 100)

puts game1
puts game1.tecnicalSheet
puts Game.discounted_price(game1.price, 20)