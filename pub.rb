class Pub

    attr_accessor :name, :till, :drink

    def initialize(name, till, drink)
        @name = name
        @till = till
        @drinks = drink
    end

    def drink_count()
        return @drinks.count
    end

    def till_add(drink)
        @till += drink.price
    end

    def reduce_drinks(drink)
        @drinks.delete(drink)
    end
end