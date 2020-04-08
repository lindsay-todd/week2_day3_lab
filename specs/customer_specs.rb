require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../drink')
require_relative('../customer')
require_relative('../pub')

class CustomerTest < MiniTest::Test

    def setup
        @customer = Customer.new("Marvin", 20)
        @drink = [@drink1, @drink2, @drink3]
        @drink1 = Drink.new("Beer", 3.50)
        @drink2 = Drink.new("Wine", 5.00)
        @drink3 = Drink.new("Whisky", 4.50)
    end

    def test_name
        assert_equal("Marvin", @customer.name)
    end

    def test_reduce_money
        assert_equal(15, @customer.reduce_money(@drink2))
    end

    def test_reduce_money_2
        assert_equal(15.50, @customer.reduce_money(@drink3))
    end
end