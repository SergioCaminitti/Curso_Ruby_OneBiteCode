require 'pg'

conn = PG.connect(
    dbname: 'bd_fliperama',
    user: 'postgres',
    password: 'WSDerf7532',
    host: 'localhost',
    port: 5432
)

# 1 - Adicionando dados com um array

registros = [
    {name: 'Street Fighter', year: 1987, score: 9.5},
    {name: 'Mortal Kombat', year: 1992, score: 9.0}
]

# 2 - Iterando os dados do array

registros.each do |registro|
    name = registro[:name]
    year = registro[:year]
    score = registro[:score]

    # Cria a intrução SQL Inserção
    insert_query = "INSERT INTO jogo (name, year, score) VALUES ('#{name}', #{year}, #{score})"

    conn.exec(insert_query)
end
puts "Registros inseridos com sucesso!"
conn.close if conn



