# Alternativa 1
# def search(key)
#     Dir.glob("data/*.txt") do |file|
#         f = File.open(file)
#         f.each_with_index do |line, index|
#             if line.include?(key)
#                 return file, index
#             end
#         end
#     f.close
#     end
# end

# filename, linenumber = search(key)
# puts "Arquivo: #{filename} Linha: #{linenumber + 1}"

def search(key)
    result = {}
    Dir.glob("data/*.txt") do |file|
        f = File.open(file)
        f.each_with_index do |line, index|
            if line.upcase.include?(key) 
                result[index + 1] = file 
            end
        end
        f.close
    end
    result
end

puts "Busca de palavras em arquivos".center(50,"-")
puts "Digite uma palara a ser procurada"
key = gets.chomp.upcase

result = search(key)
if result.length > 0
    for key, value in result
        puts "Arquivo: #{value} Linha: #{key}"
    end
else
    puts "Não encontrado"
end