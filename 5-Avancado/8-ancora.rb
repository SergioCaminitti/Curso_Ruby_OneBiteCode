# 1 - Verificação de string que começa com Olá e termina com mundo

string = ["Olá, mundo!", "Olá, OBC!","Ruby é divertido","Olá mundo",]

string.each do |string|
    if string =~/\AOlá.*mundo\z/
        puts "#{string} - corresponde ao padrão"
    else
        puts "#{string} - não corresponde ao padrão"
    end
end

# 2 - Verificação de string que começa com Ruby e termina com 3.2

string = ["Ruby-3.2","Ruby-2.3","Ruby-3.2 é a nova versão","Ruby-3.2 é a nova versão do Ruby",]
string.each do |string|
    if string =~/^Ruby.*3\.2$/
        puts "#{string} - corresponde ao padrão"
    else
        puts "#{string} - não corresponde ao padrão"
    end
end