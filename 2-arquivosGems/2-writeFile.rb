# # 1 - Alternativa 1
# File.open("data/courses.txt", "w") do |file| # no modo de escrita ele cria o arqvo caso ele não exista
#   file.puts "Criando arquivo de texto"
#   file.puts "Hello World"
#   file.puts "Olá mundo"
#   file.puts "React Native"
#   file.puts "ReactJS"
#   # file.write "ReactJS"
# end


# 2 - Alternativa 2
File.open("data/courses.txt","a") do |file| # w = write (escrita) | a = append (adicionar)
  puts "Qual curso deseja fazer?"
  course = gets.chomp
  file.puts course # comando para escrever no arquivo
end
