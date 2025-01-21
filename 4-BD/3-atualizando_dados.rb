require 'pg'

conn = PG.connect(
    dbname: 'bd_fliperama',
    user: 'postgres',
    password: 'WSDerf7532',
    host: 'localhost',
    port: 5432
)

id_registro = 1

# 1 - Novos valores para o jogo
new_name = 'Street Fighter II'
new_year = 2023
new_score = 8.5

# 2 - Criando instrução SQL de atualização
update_query = "UPDATE jogo SET name = '#{new_name}', year = #{new_year}, score = #{new_score} WHERE id = #{id_registro}"

conn.exec(update_query)
puts "Registro atualizado com sucesso!"
conn.close if conn

