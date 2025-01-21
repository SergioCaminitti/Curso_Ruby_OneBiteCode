# Método Privado en Ruby
# só pode ser chamado dentro da classe onde foi definido

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
    # Método privado
    private 
    def apply_discount(discountPercentage)
        @price -= (@price * discountPercentage / 100)
    end

    # Método publico que chamara o método privado
    public
    def apply_10_percent_discount()
        apply_discount(10)
    end
end

game1 = Game.new("Super Mario", "Aventura", true, 3, 100)
game1.tecnicalSheet

game1.apply_10_percent_discount

game1.tecnicalSheet