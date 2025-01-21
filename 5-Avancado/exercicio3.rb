require 'minitest/autorun'
require_relative 'calculator'

# class TestCalculator < Minitest::Test
#     def setup
#         @calc = Calculator.new
#     end
#     def teardown
#         @calc = nil
#     end
#     def test_sum
#         assert_equal(5, @calc.sum(3,2))
#         assert_equal(10, @calc.sum(5,5))
#         assert_equal(2, @calc.sum(1,1))
#         assert_equal(15, @calc.sum(20,-5))
#     end
#     def test_sub
#         assert_equal(1, @calc.sub(3,2))
#         assert_equal(-10, @calc.sub(10,20))
#         assert_equal(50, @calc.sub(30,-20))
#     end
#     def test_mult
#         assert_equal(6, @calc.mult(3,2))
#         assert_equal(-6, @calc.mult(3,-2))
#     end
#     def test_div
#         assert_equal(2, @calc.div(4,2))
#         assert_equal(-2, @calc.div(4,-2))
#         assert_equal(0, @calc.div(0,2))
#     end
# end

# Resolução do Professor

class TestCalculator < Minitest::Test
    def setup
        @calc = Calculator.new
    end
    def test_addition
        result = @calc.sum(3, 4)
        assert_equal(7, result, "Falha na adição de números positivos")
    end
    def test_subtraction
        result = @calc.sub(4 ,3)
        assert_equal(1, result, "Falha na subtração de números positivos")
    end
    def test_subtraction_with_negatives
        result = @calc.sub(5 ,-3)
        assert_equal(8, result, "Falha na subtração de números negativos")
    end
    def test_multiplication
        result = @calc.mult(2, 4)
        assert_equal(8, result, "Falha na multiplicação de números positivos")
    end
    def test_division
        result = @calc.div(8, 2)
        assert_equal(4, result, "Falha na divisão de números positivos")
    end
    def test_division_by_zero
        assert_raises(ZeroDivisionError, "São está gerando uma exceção ao dividir por zero") do
            @calc.div(8, 0)
        end
    end
end
