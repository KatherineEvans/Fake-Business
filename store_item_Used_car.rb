require './store_item_module.rb' 

module StoreFront
  class Used_cars 
    include Sellable

    attr_reader :car_name, :car_color, :car_price, :car_for_sale, :shelf_life
    attr_writer :car_name, :car_color, :car_price, :car_for_sale, :shelf_life
    
    def initialize(car_info)
      @car_name = car_info[:car_name]
      @car_color = car_info[:car_color]
      @car_price = car_info[:car_price]
      @car_for_sale = car_info[:for_sale]
      @shelf_life = car_info[:shelf_life]
    end

    def used_car_now 
      if @shelf_life > 1
        p "This car is now used!"
      else
        p "This car is New!"
      end
    end
  end
end