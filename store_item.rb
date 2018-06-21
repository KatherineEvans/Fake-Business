require './store_item_Car.rb'
require './store_item_Used_car.rb'


car1 = Cars.new({car_name: "Tank", car_color: "Army Green", car_price: 90000, for_sale: true})
car2 = Cars.new(car_name: "Weinermobile", car_color: "Brown", car_price: 450, for_sale: false)
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

puts car2.car_name
puts car3.car_name

used1 = Used_cars.new car_name: "Batmobile", car_color: "Black", car_price: 500000, for_sale: true, shelf_life: 6

used1.used_car_now