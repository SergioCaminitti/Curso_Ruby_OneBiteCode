# Gerador de Email
puts "Série de Fibonacci".center(30, "-")

puts "Entre com um número, esse numero irá delimitar até onde iremos com a sequencia:"
number = gets.chomp.to_i

# fibonacci = 1
# fn2 = 0
# while fibonacci <= number
#   puts fibonacci
#   temp = fibonacci 
#   fibonacci += fn2
#   fn2 = temp
# end

fib = 1
fibPrev = 0

# while fib <= number
#   puts fib
#   temp = fib
#   fib += fibPrev
#   fibPrev = temp
# end

while fib <= number
  puts fib
  fibPrev, fib = fib, fib+fibPrev
end