require 'active_record'

# 1 - Configuração do BD
ActiveRecord::Base.establish_connection(
    adapter: 'postgresql',
    host: 'localhost',
    username: 'postgres',
    password: 'WSDerf7532',
    database: 'bd_fliperama'
)

# 2 - Criação da tabela
ActiveRecord::Schema.define do
    create_table :users do |t|
        t.string :name
        t.string :email
    end
end

# 3 - Definição de um Modelo
class User < ActiveRecord::Base
end

user = User.new(name: 'Claudinho', email: 'claudinho@gmail.com')
user.save

# 4 - Recuperando os dados
users = User.all # SELECT * FROM users
users.each do |user|
    puts "Nome: #{user.name}, E-mail: #{user.email}"
end