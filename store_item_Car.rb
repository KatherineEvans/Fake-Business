require './store_item_module.rb' 


class Cars
  include Sellable

  attr_reader :car_name, :car_color, :car_price, :car_for_sale
  attr_writer :car_name, :car_color, :car_price, :car_for_sale

  def initialize(car_info)
    @car_name = car_info[:car_name]
    @car_color = car_info[:car_color]
    @car_price = car_info[:car_price]
    @car_for_sale = car_info[:for_sale]
  end
  def car_sales_pitch
    return "Car for sale! Model: #{car_name}, Color: #{car_color}, Price: #{car_price}"
  end
end
