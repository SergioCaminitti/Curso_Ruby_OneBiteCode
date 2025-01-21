# Utilizando argumentos

ARGV.each { |arg| puts arg}
ARGV.each { |arg| puts arg.class}

# Potencia de um numero

ARGV.each do |arg|
  pot = arg.to_i ** 2
  puts "#{arg} ao quadrado é #{pot}"
end

 # 3 - Salvando conteudo de argumento em arquivo

File.open("data/games.txt", "a") do |file|
  ARGV.each do |game|
    file.puts game
  end
end