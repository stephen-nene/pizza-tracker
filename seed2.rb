require 'faker'
10.times do
  ingredients = Array(Faker::Food.ingredients(number: rand(3..5)))
  puts "#{ingredients.join(',')}"

end
