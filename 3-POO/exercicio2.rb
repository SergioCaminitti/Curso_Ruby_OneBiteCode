class FinancialTransaction
    attr_accessor :completed
    attr_reader :to, :from, :amount
    def initialize(to, from, amount, completed)
        @to = to
        @from = from
        @amount = amount
        @completed = completed
    end
    def to_s
        if @completed
            "#{@from} enviou #{@amount} para #{@to}"
        else
            "#{@from} tem que enviar #{@amount} para #{@to}"
        end
        
    end
end

troco1 = FinancialTransaction.new("João", "Maria", 100, true)
troco2 = FinancialTransaction.new("Pedro", "Claudia", 100, false)

puts troco1.to_s
puts troco2.to_s

troco2.completed = true

puts troco2.to_s