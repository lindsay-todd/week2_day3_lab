require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../drink')
require_relative('../customer')
require_relative('../pub')

class PubTest < MiniTest::Test

    def setup
        @drink1 = Drink.new("Beer", 3.50, 5)
        @drink2 = Drink.new("Wine", 5.00, 5)
        @drink3 = Drink.new("Whisky", 4.50, 10)
        @drink = [@drink1, @drink2, @drink3]
        @pub = Pub.new("Red Lion", 1000, @drink)
        @customer1 = Customer.new("Marvin", 20, 45, 50)
        @customer2 = Customer.new("John", 30, 16, 100)
    end

    def test_name
        assert_equal("Red Lion", @pub.name)
    end

    def test_number_of_drinks
        assert_equal(3, @pub.drink_count())
    end

    def test_add_money_to_till
        @pub.till_add(@drink2)
        assert_equal(1005.00, @pub.till)
    end

    def test_reduce_number_of_drinks
        @pub.reduce_drinks(@drink2)
        assert_equal(2, @pub.drink_count())
    end

    def test_check_customer_overage
        assert_equal(true, @pub.age_check(@customer1))
    end

    def test_check_customer_underage
        assert_nil(@pub.age_check(@customer2))
    end

    def test_check_drunkenness
        assert_equal(true, @pub.check_drunkenness(@customer2))
    end
end