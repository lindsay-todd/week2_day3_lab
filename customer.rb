class Customer

    attr_accessor :name, :wallet, :drink

    def initialize(name, wallet)
        @name = name
        @wallet = wallet
    end

    def wallet_money(drink)
        @wallet -= drink.price
    end

    def buy_drink(pub, drink)
        @wallet -= drink.price
        pub.till += drink.price
        pub.reduce_drinks(drink)
        pub.drink_count 
    end
end

# assert_equal(2, @pub.drink_count())

# def take_fish_from_river(river)
#     fish = river.get_fish()
#     @food << fish if !fish.nil?
#   end

        # drink = pub.get_drink()
