string = "A Linguagem Ruby é poderosa e versátil. Ruby é divertida de aprender."
pattern = /Ruby/

results = string.scan(pattern)

puts "O padrão 'Ruby' foi encontrado #{results.length} vezes na string."
puts "As ocorrências foram: #{results.join(', ')}"

# extraindo todos os dígitos de uma string com o scan

string2 = "A OpenAI lançou o GTP-3 em 2020 e o GPT-4 em 2022."
numbers = string2.scan(/\d+/) # \d: Corresponde a qualquer dígito de 0 a 9.
puts "Os números encontrados na string são: #{numbers.join(', ')}"