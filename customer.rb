class Customer

    attr_accessor :name, :wallet, :age, :drunkenness, :drink

    def initialize(name, wallet, age, drunkenness)
        @name = name
        @wallet = wallet
        @age = age
        @drunkenness = drunkenness
    end

    def wallet_money(drink)
        @wallet -= drink.price
    end

    def buy_drink(pub, drink)
        @wallet -= drink.price
        pub.till += drink.price
        pub.reduce_drinks(drink)
        pub.drink_count
        @drunkenness += drink.alcohol_level   
    end
end
