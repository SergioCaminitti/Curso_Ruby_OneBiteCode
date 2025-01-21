# A palavra chave self no contexto do código forneciso
# refere-se à instância atual da classe Game. Ela pode ser
# usada para se referir a métodos ou variáveis de instância.

# Método construtor, feito toda vez que um novo objeto é criado
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

    def information
        puts "O Jogo é do genero #{@genre} e as versões: #{@versions}"
    end

    def tecnicalSheet
        puts " Dados do jogo ".center(30,"=")
        puts "Nome do Jogo: #{@name}"
        puts "Gênero: #{@genre}"
        puts "Preço: #{@price}"
    end

    # Sobreescrevendo o método to_s - método de exibição padrão
    def to_s 
        "#{@name} - #{@genre} - #{@multiplayer} - #{@versions}"
    end

    def details
        puts "Detalhes do jogo: #{self}"
    end
end

game = Game.new

puts game
puts game.details