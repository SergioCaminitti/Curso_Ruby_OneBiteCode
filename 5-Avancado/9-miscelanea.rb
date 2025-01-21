# 1 - Exemplo de exclusão de caracteres usando expressão regular

strings = ["apple", "cd", "cherry", "dt", "grape", "fig"]

strings.each do |string|
    if string =~ /^[^aeiou]+$/
        puts "#{string} - conter apenas consoantes"
    else
        puts "#{string} - contém vogais"
    end
end

# 2 - Exemplo do uso do sub e gsub em Ruby para substituir partes de uma string
string2 = "A linguagem Ruby é fácil de aprender e Ruby é divertida."

novo_string_sub = string2.sub(/Ruby/, 'Python')
novo_string_gsub = string2.gsub(/Ruby/, 'Python')

puts "Usando sub:"
puts "String original: #{string2}"
puts "String modificada: #{novo_string_sub}"

puts "Usando gsub:"
puts "String original: #{string2}"
puts "String modificada: #{novo_string_gsub}"

