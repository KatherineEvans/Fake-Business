#Hashes

car1 = {:name => "Tank", :color => "Army Green", :price => 90000}
car2 = {name: :Weinermobile, color: :Brown, price: 450}
car3 = {name: "Batmobile", color: "Black", price: 500000}

puts "Would you like to be the owner of a new " + car1[:name] + "? Well look no further. We are selling an " + car1[:color] + " one at " + car1[:price].to_s
puts "#{car3[:name]} for sale! Previously owned and operated by Batman, color: #{car3[:color]}, selling at the very reasonable price of: #{car3[:price]}."
puts "Not sure who wants it, but we're selling a #{car2[:name]}"

# Classes

class Cars
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

car1 = Cars.new({car_name: "Tank", car_color: "Army Green", car_price: 90000, for_sale: true})
car2 = Cars.new({car_name: "Weinermobile", car_color: "Brown", car_price: 450, for_sale: false})
car3 = Cars.new car_name: "Batmobile", car_color: "Black", car_price: 500000, for_sale: true


puts car1.car_name
puts car1.car_color
puts car1.car_sales_pitch

puts car1.car_price
puts car1.car_discount
puts car1.bidding_war
puts car1.car_for_sale
car1.car_sold
puts car1.car_for_sale

