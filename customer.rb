class Customer

    attr_reader :name, :wallet, :drink

    def initialize(name, wallet)
        @name = name
        @wallet = wallet
    end

    def wallet_money(drink)
        @wallet -= drink.price
    end
end