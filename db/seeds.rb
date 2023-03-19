puts "Destroying existing data"
# Destroy existing records to ensure clean slate
RestaurantPizza.destroy_all
Restaurant.destroy_all
Pizza.destroy_all
puts "Done destroying existing data"

puts "Seeding pizza table"
# Seed Pizzas table
10.times do
  ingredients = 4.times.map do
    Faker::Food.ingredients.split(', ').join(', ')
  end
  Pizza.create(
    name: Faker::Food.dish,
    ingredients: ingredients.join(', ')
  )
end

puts "Seeding restaurant table"
# Seed Restaurants table
10.times do
  Restaurant.create(
    name: Faker::Company.name,
    address: Faker::Address.street_address,
  )
end

puts "Seeding RestaurantPizzas table"
# Seed RestaurantPizzas table
restaurants = Restaurant.all
pizzas = Pizza.all

restaurants.each do |restaurant|
  pizzas.each do |pizza|
    RestaurantPizza.create(
      price: Faker::Commerce.price(range: 10.0..30.0),
      restaurant: restaurant,
      pizza: pizza,
    )
  end
end
puts "Seeding done now....."
puts "Happy Hacking!  "

