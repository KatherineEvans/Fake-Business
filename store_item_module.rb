module Sellable
  def car_sales_pitch
    return "Car for sale! Model: #{car_name}, Color: #{car_color}, Price: #{car_price}"
  end

  def car_discount
    @car_price = @car_price * 0.95
  end

  def bidding_war
    @car_price = @car_price * 1.1
  end

  def car_sold
    @car_for_sale = false
  end

end