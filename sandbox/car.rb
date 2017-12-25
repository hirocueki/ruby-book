class Car
    # attr_accessor :color
    attr_reader :color
    def initialize(color)
        @color = color
    end


    def repaint(color)
        puts "色を #{@color} -> #{color} に変更しました！"
        @color = color
    end

    def show
        puts "ボディの色は #{color} です"
    end
end


cars = []
redCar = Car.new("赤")
silverCar = Car.new("シルバー")

cars << redCar
cars << silverCar

silverCar.repaint( "ゴールド" )
# silverCar.color = "ゴールド"

cars.each do | car |
    car.show
end