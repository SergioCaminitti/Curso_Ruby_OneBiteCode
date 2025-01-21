require 'date'
# require "date"

puts Date.new(1994)
puts Date.new(1994, 1)
puts Date.new(1994, 1, 18)

birthday = Date.new(1994, 1, 18)
puts birthday.class;
puts birthday.year;
puts birthday.month;
puts birthday.day;

# data.wday
# 0 - Domingo
# 1 - Segunda
# 2 - Terça
# 3 - Quarta
# 4 - Quinta
# 5 - Sexta
# 6 - Sábado

puts birthday.wday

puts birthday.monday?
puts birthday.tuesday?
