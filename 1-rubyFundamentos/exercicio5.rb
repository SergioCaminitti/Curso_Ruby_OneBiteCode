# minha solução

# def countLetter(word,letter)
#   cont = 0
#   i = 0
#   while i < word.length 
#     if word[i].include?(letter)
#       cont += 1
#     end
#     i += 1
#   end
#   return cont
# end

# puts "Calculadora de Letras".center(50,"-")

# puts "Digite uma palavra ou texto:"
# word = gets.chomp

# puts "Digite a letra que deseja contar:"
# letterUser = gets.chomp

# counterLetter = {:letter => letterUser, :count => countLetter(word,letterUser)}

# puts "Numero de vezes que é letra '#{letterUser}' apare na palavra '#{word}' é de: #{counterLetter.fetch(:count) } vez(s)" 

# Solução Curso

def letterFrequency(text)
  char = ('a'..'z').to_a + ('A'..'Z').to_a
  frequency = {}
  text.each_char do |char|
    if char.include?(char)
      unless frequency.key?(char)
        frequency[char] = 1
      else
        frequency[char] += 1
      end
    end
  end
  return frequency
end

puts "Frequancia de Letra"
puts "Digite o texto:"
text = gets.chomp

puts letterFrequency(text)
