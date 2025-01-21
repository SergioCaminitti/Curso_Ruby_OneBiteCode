# 1 - Alternativa 1
movies = File.open("data/filmes.txt")
puts movies
# puts movies.class

movies.each {|line| puts line.strip}

# 2 - Alternativa 2
file_path = "data/filmes.txt"
File.open(file_path, "r") do |file|
  file.each_line { |line| puts line.strip unless line.strip.empty?}
end

