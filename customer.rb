class Customer

    attr_accessor :name, :wallet, :drink

    def initialize(name, wallet)
        @name = name
        @wallet = wallet
    end

    def wallet_money(drink)
        @wallet -= drink.price
    end

    def buy_drink(drink)
        @wallet -= drink.price
        # till_add(drink)
        @drinks.delete(drink)
    end
end