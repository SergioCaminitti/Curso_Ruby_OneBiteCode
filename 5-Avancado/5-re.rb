phrase = "A linguagem Ruby é sensacional!"

p phrase.include?("uby")
p phrase.start_with?("a")
p phrase.end_with?("sensacional")
p phrase.end_with?("sensacional!")

# Referência
# \d: Corresponde a qualquer dígito de 0 a 9.

# \D: Corresponde a qualquer caractere que não seja um dígito.
# \w: Corresponde a qualquer caractere alfanumérico (letras, dígitos e sublinhados).
# \W: Corresponde a qualquer caractere que não seja alfanumérico.
# \s: Corresponde a qualquer caractere de espaço em branco, como espaço, tabulação, nova linha, entre outros.
# \S: Corresponde a qualquer caractere que não seja espaço em branco.
# \b: Corresponde a uma fronteira de palavra.
# \B: Corresponde a qualquer posição que não seja uma fronteira de palavra.
# \A: Corresponde ao início da string.
# \Z: Corresponde ao final da string, ou ao final da linha se a opção multiline estiver habilitada.

# Utilizando o RE

p /T/.class

 # 1º ocorrência da letra R
p phrase =~ /R/

p phrase =~ /a/

p phrase =~ /uby/


# Checando de uma palavra está presente em uma string

string = "Olá, mundo!"

pattern = /mundo/

if string =~ pattern
  puts "Encontrado!"
else
  puts "Não encontrado!"
end
