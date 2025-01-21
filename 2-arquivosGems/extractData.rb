require 'roo'

# 1 - Nome do arquivo da planilha
documento = Roo::Excelx.new("data/Planilha1.xlsx")

documento.default_sheet = documento.seets.first

# 2 - Iterando linhas da planilha

(2..documento.last_row).each do |linha|
    nome = documento.cell(linha, 1)
    idade = documento.cell(linha, 2)
    cidade = documento.cell(linha, 3)

    puts "Nome: #{nome}, Idade: #{idade} e Cidade #{cidade}"
end
