require 'minitest/autorun'

class Pessoa
    attr_accessor :nome, :idade
    def initialize(nome, idade)
        @nome = nome
        @idade = idade
    end
    def apresentar
        "Olá, sou #{nome}, e tenho #{idade} anos."
    end
end

class TestPessoa < Minitest::Test
# O método setup é um método especial em testes unitários
# que é executado antes de cada caso de teste em uma classe de teste.
    def setup 
        @pessoa = Pessoa.new("João", 20)
    end    
    def test_initialize
        assert_equal("João", @pessoa.nome)
        assert_equal(20, @pessoa.idade)
    end
    def test_apresentar
        assert_equal("Olá, sou João, e tenho 20 anos.", @pessoa.apresentar)
    end
end
