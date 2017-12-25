class Product
    DEFAULT_PRICE = 0

    attr_reader :name, :price
    def initialize(name, price = DEFAULT_PRICE)
        @name = name
        @price = price
    end
end


products = []
products << Product.new('A free movie')
products << Product.new('Titanic', 2000)


products.each do | product |
    puts "#{product.name} is #{product.price} yen."
end