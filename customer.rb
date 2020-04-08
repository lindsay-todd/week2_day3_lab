class Customer

    attr_reader :name, :wallet

    def initialize(name, wallet)
        @name = name
        @wallet = wallet
    end

    def reduce_money(drink)
        @wallet -= drink.price
    end
end