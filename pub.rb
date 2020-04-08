class Pub

    attr_reader :name, :till, :drink

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
end