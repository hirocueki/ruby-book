
class Product
    attr_reader :name, :price

    def initialize(name, price)
        @name = name
        @price = price
    end

    def to_s
        "name: #{name}, price: #{price}"
    end
end

class DVD < Product
    attr_reader :running_time

    def initialize(name, price, running_time)
        # @name = name
        # @price = price
        super(name,price)

        @running_time = running_time
    end

    
    def to_s
        "name: #{name}, price: #{price}, running_time: #{running_time}"
    end
end

class Agent
    attr_reader :code , :name
    def initialize(code, name)
        @code = code
        @name = name
    end

    def ==(agent)
        if agent.is_a?(Agent)
            code == agent.code
        else
            false
        end
    end
end

mustang = Agent.new("001", "Mustang")
rooser = Agent.new("002", "Rooser")
king  = Agent.new("001", "King")


p mustang == rooser
p mustang == king

p mustang.== rooser
p mustang.== king

product = Product.new('A greate movie', 1000)
puts product.name
puts product.price
puts product.to_s


dvd = DVD.new('A greate movie', 1000, 120)
puts dvd.name
puts dvd.price
puts dvd.running_time
puts dvd.to_s