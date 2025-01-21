# Método Protegido en Ruby
# podem ser chamados a partir de instâncias da mesma classe onde foram definidos
# ou de suas subclasses

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

    # Método protegido
    protected

    def disconted_price(discount_percentage)
        @price -= (@price * (discount_percentage.to_f / 100))
    end
end


game1 = Game.new("Fifa", "Esporte", true, [2018,2019,2020], 100)

puts game1
puts game1.tecnicalSheet
game1.send(:disconted_price, 20)
puts game1.tecnicalSheet

game2 = Game.new("GTA", "Ação", false, [2018,2019,2020], 200)
puts game2
puts game2.tecnicalSheet
game2.send(:disconted_price, 20)
puts game2.tecnicalSheet