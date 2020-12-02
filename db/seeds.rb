Restaurant.destroy_all
puts "Creating some restaurants"

# restaurant = Restaurant.new(
#   name: 'Bao Soho',
#   cuisine: 'Taiwanese',
#   address: 'Soho, London',
#   website: 'www.baolondon.com',
#   phone_number: '02075671234'
# )
new_restaurant = Restaurant.new(
  name: 'Bao Soho',
  cuisine: 'Taiwanese',
  address: 'London, E13 0HB',
  website: 'www.baolondon.com',
  phone_number: '02075671234',
)
require "open-uri"
file = URI.open('https://res.cloudinary.com/dh6gdchfj/image/upload/v1606929650/bao-interior_tq50qf.jpg')
new_restaurant.photo.attach(io: file, filename: 'baophoto.png', content_type: 'image/jpg')
  new_restaurant.save!
  puts 'Created Restaurant'
  10.times do
    dish = Dish.new(
      name: Faker::Food.dish,
      description: Faker::Food.description,
      allergen: ['Gluten', 'Eggs', 'Nuts', 'Shellfish', 'Soya'].sample,
      restaurant: new_restaurant,
      dish_type: ['Starter', 'Main', 'Dessert', 'Drink'].sample
    )
    dish.save!
    puts "and a dish"
  end
puts "done"


# 20.times do
#   restaurant = Restaurant.new(
#     name: Faker::Restaurant.name,
#     cuisine: ['Chinese', 'Italian', 'Portuguese', 'Indian', "American", 'Thai', "Spanish", 'Lebanese'].sample,
#     address: Faker::Address.street_address,
#     website: Faker::Internet.url,
#     phone_number: Faker::PhoneNumber.cell_phone
#   )
# end
