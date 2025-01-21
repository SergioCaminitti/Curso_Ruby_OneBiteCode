puts Time.new
puts Time.now

puts Time.new(2023)

some_time = Time.new(2023,5,12,18,43,51)

puts "#{some_time.day}/#{some_time.month}/#{some_time.year}"
puts "#{some_time.hour}:#{some_time.min}:#{some_time.sec}"

puts some_time.wday

puts some_time.monday?

# Operação de Adição e Subtraçaõ

start_of_year = Tme.new(2024)
puts start_of_year

puts start_of_year + (60 * 60 * 24 * 30)
