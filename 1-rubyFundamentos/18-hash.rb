mov = Hash.new
puts mov.class 

movie = { "name" => "Batman", "year" => 2022}
puts movie

movie2 = { :name => "Vingadores", :year => 2011}
puts movie2

# 2 - Iterando valores (for, while, each)
puts movie2.keys
puts movie2.values

for key, value in movie2
    puts "{key} - #{value}"
end

i=0
while i < movie.length
    puts "#{movie2.keys[i]} - #{movie2.values[i]}"
    i+=1
end

movie2.each{|key, value| puts "#{key} - {value}"}