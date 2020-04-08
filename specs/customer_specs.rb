require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../drink')
require_relative('../customer')
require_relative('../pub')

class CustomerTest < MiniTest::Test

    def setup
        @customer = Customer.new("Marvin", 20)
        @drink1 = Drink.new("Beer", 3.50)
        @drink2 = Drink.new("Wine", 5.00)
        @drink3 = Drink.new("Whisky", 4.50)
        @drink = [@drink1, @drink2, @drink3]
        @pub = Pub.new("Red Lion", 1000, @drink)
    end

    def test_name
        assert_equal("Marvin", @customer.name)
    end

    def test_wallet_money
        @customer.wallet_money(@drink1)
        assert_equal(16.50, @customer.wallet())
    end

    def test_buy_drink
        @customer.buy_drink(@pub, @drink2)
        assert_equal(15.00, @customer.wallet())
        assert_equal(1005.00, @pub.till())
        assert_equal(2, @pub.drink_count())
    end
end

# def test_bear_can_take_fish_from_river
#     @bear.take_fish_from_river(@river)
#     assert_equal(1, @bear.food_count)
#     assert_equal(2, @river.number_of_fishes)
#   end