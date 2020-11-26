Restaurant.destroy_all
puts "Creating some restaurants"
20.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    cuisine: ['Chinese', 'Italian', 'Portuguese', 'Indian', "American", 'Thai', "Spanish", 'Lebanese'].sample,
    address: Faker::Address.street_address,
    website: Faker::Internet.url,
    phone_number: Faker::PhoneNumber.cell_phone
  )
  restaurant.save!
  puts 'Created Restaurant'
  10.times do
    dish = Dish.new(
      name: Faker::Food.dish,
      description: Faker::Food.description,
      allergen: ['Gluten', 'Eggs', 'Nuts', 'Shellfish', 'Soya'].sample,
      restaurant: restaurant
    )
    dish.save!
    puts "and a dish"
  end
end
puts "done"

