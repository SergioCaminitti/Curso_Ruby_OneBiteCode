class Project 
    # Construtor
    def initialize
        @name = "Automação Web"
        @budget = 10000
        @members = ["Fulano", "Ciclano"]
    end
    #to_s
    def to_s
        "Nome do projeto: #{@name} - Orçamento: #{@budget} - Membros: #{@members}"
    end
    # getters
    def name
        @name
    end
    def budget
        @budget
    end
    def members
        @members
    end
    # Setters
    def name=(new_name)
        @name = new_name
    end
    def budget=(new_budget)
        @budget = new_budget
    end
    def members=(new_members)
        @members = new_members
    end
end


projeto = Project.new

puts projeto.to_s
projeto.name = "Meu projeto 2.0"
projeto.budget = 20000
projeto.members = ["Maria", "José Claudio"]
puts projeto.to_s