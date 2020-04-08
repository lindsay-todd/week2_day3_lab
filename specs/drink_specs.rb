require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../drink')
require_relative('../customer')
require_relative('../pub')

class DrinkTest < MiniTest::Test

  def setup()
    @drink1 = Drink.new("Beer", 3.50)
    @drink2 = Drink.new("Wine", 5.00)
    @drink3 = Drink.new("Whisky", 4.50)
    @drink = [@drink1, @drink2, @drink3]
  end

  def test_drink_name
    assert_equal("Beer", @drink1.name)
  end

end