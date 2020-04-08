require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../drink')
require_relative('../customer')
require_relative('../pub')

class PubTest < MiniTest::Test

    def setup
        @pub = Pub.new("Red Lion", 1000)
        @drink = [@drink1, @drink2, @drink3]
        @drink1 = ["Beer", 3.50]
        @drink2 = ["Wine", 5.00]
        @drink3 = ["Whisky", 4.50]
    end

    def test_name
        assert_equal("Red Lion", @pub.name)
    end
end