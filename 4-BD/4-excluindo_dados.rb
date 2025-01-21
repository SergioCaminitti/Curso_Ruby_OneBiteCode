require 'pg'

conn = PG.connect(
    dbname: 'bd_fliperama',
    user: 'postgres',
    password: 'WSDerf7532',
    host: 'localhost',
    port: 5432
)

id_registro = 5

# 1 - Criando a Query de exclusão

delete_query = "DELETE FROM jogo WHERE id = #{id_registro}"

conn.exec(delete_query)

puts "Registro exluído com sucesso"

conn.close