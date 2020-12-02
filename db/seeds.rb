Restaurant.destroy_all
puts "Creating some restaurants"

dishoom_cg = Restaurant.new(
  name: 'Dishoom Covent Garden',
  cuisine: 'Indian',
  address: "12 Upper St Martin's Lane, WC2H 9FB",
  website: 'www.dishoom.com/covent-garden',
  phone_number: '020 7420 9320',
)
require "open-uri"
file = URI.open('https://res.cloudinary.com/dh6gdchfj/image/upload/v1606940861/dishoom-cg_ggahzz.jpg')
dishoom_cg.photo.attach(io: file, filename: 'dishoom-ken.png', content_type: 'image/jpg')
dishoom_cg.save!
puts 'Created Restaurant'

dishoom_carnaby = Restaurant.new(
  name: 'Dishoom Carnaby',
  cuisine: 'Indian',
  address: "22 Kingly Street, W1B 5QB",
  website: 'www.dishoom.com/carnaby',
  phone_number: '0207 420 9322',
)
require "open-uri"
file = URI.open('https://res.cloudinary.com/dh6gdchfj/image/upload/v1606941452/dishoom-carnaby_ruwwfa.jpg')
dishoom_carnaby.photo.attach(io: file, filename: 'dishoom-ken.png', content_type: 'image/jpg')
dishoom_carnaby.save!
puts 'Created Restaurant'

dishoom_kensington = Restaurant.new(
  name: 'Dishoom Kensington',
  cuisine: 'Indian',
  address: '4 Derry Street, W8 5SE',
  website: 'www.dishoom.com/kensington',
  phone_number: '0207 420 9325',
)
require "open-uri"
file = URI.open('https://res.cloudinary.com/dh6gdchfj/image/upload/v1606936658/dishoom-ken_kdzhw5.jpg')
dishoom_kensington.photo.attach(io: file, filename: 'dishoom-ken.png', content_type: 'image/jpg')
dishoom_kensington.save!
puts 'Created Restaurant'

dishoom_kings = Restaurant.new(
  name: "Dishoom King's Cross",
  cuisine: 'Indian',
  address: '5 Stable Street, N1C 4AB',
  website: 'www.dishoom.com/kings',
  phone_number: '020 7420 9321',
)
require "open-uri"
file = URI.open('https://res.cloudinary.com/dh6gdchfj/image/upload/v1606941958/dishoom-kings_uplfuw.jpg')
dishoom_kings.photo.attach(io: file, filename: 'dishoom-ken.png', content_type: 'image/jpg')
dishoom_kings.save!
puts 'Created Restaurant'

#Restaurant to select in Demo
dishoom_shore = Restaurant.new(
  name: 'Dishoom Shoreditch',
  cuisine: 'Indian',
  address: "7 Boundary Street, E2 7JE",
  website: 'www.dishoom.com/shoreditch',
  phone_number: '020 7420 9324',
)
require "open-uri"
file = URI.open('https://res.cloudinary.com/dh6gdchfj/image/upload/v1606941288/dishoom-shore_nwfvwt.jpg')
dishoom_shore.photo.attach(io: file, filename: 'dishoom-ken.png', content_type: 'image/jpg')
dishoom_shore.save!
puts 'Created Restaurant'

dish_one = Dish.new(
  name: "Nalli Nihari Biryani",
  description: 'Nihari – a famously hearty and robust dish – is synonymous with celebration. Made into a biryani, it is doubly so. Tender shank of lamb is layered with rice and caramelised onions then sealed beneath a pastry blanket. Enriched further with kaleji (chicken liver) raita and nihari gravy',
  allergen: 'Gluten',
  restaurant: dishoom_shore,
  dish_type: 'main',
)
dish_one.save!
puts "and a dish"

dish_two = Dish.new(
  name: "Paneer Pineapple Tikka",
  description: 'Paneer is vegetarian first-class fare and a subtle cheese to make. Marinated then gently charred with unexpected pineapple',
  allergen: 'Dairy',
  restaurant: dishoom_shore,
  dish_type: 'main',
)
dish_two.save!
puts "and a dish"

dish_three = Dish.new(
  name: "Chole Puri",
  description: 'Puffed puris lie next to a hearty bowl of spiced chickpea curry, with sweet halwa alongside. Eat altogether',
  allergen: 'Shellfish',
  restaurant: dishoom_shore,
  dish_type: 'main',
)
dish_three.save!
puts "and a dish"

dish_four = Dish.new(
  name: "Lamb Samosas",
  description: 'Gujarati filo (not Punjabi shortcrust) stuffed with minced lamb, onions and spices',
  allergen: 'Gluten',
  restaurant: dishoom_shore,
  dish_type: 'starter',
)
dish_four.save!
puts "and a dish"

dish_five = Dish.new(
  name: "DISHOOM HOUSE CHAAT",
  description: 'Warm-cold, sweet-tangy, moreish. Golden-fried sweet potato covered with cool yoghurt, pomegranate, beetroot, radish and carrot. Tamarind drizzle and green chutney lift it nicely',
  allergen: 'Dairy',
  restaurant: dishoom_shore,
  dish_type: 'starter',
)
dish_five.save!
puts "and a dish"

dish_six = Dish.new(
  name: "PRAWN KOLIWADA",
  description: "Bombay's Koli (fishermen) Wada (district) recipe: a bowl of delicate, crispy morsels – perfect for chutney-dipping",
  allergen: 'Shellfish',
  restaurant: dishoom_shore,
  dish_type: 'starter',
)
dish_six.save!
puts "and a dish"

dish_seven = Dish.new(
  name: "VICEROY’S OLD-FASHIONED",
  description: "The sort of drink in which Mountbatten may have found welcome repose. A bottle-aged muddle of Woodford Reserve Bourbon, bayleaf reduction, green tea and so on",
  allergen: '',
  restaurant: dishoom_shore,
  dish_type: 'drink',
)
dish_seven.save!
puts "and a dish"

dish_eight = Dish.new(
  name: "CHAI PAANCH",
  description: "Lemon shrub with Johnnie Walker Black Label, House Chai, Gosling’s dark rum, and two liqueurs: one ginger, one 80percent cocoa. Clear, complicated and sweet",
  allergen: '',
  restaurant: dishoom_shore,
  dish_type: 'drink',
)
dish_eight.save!
puts "and a dish"

dish_nine = Dish.new(
  name: "KALA CHANA SALAD",
  description: "Shredded lettuce and kale, red and yellow capsicums, black chickpeas and a little red chilli",
  allergen: '',
  restaurant: dishoom_shore,
  dish_type: 'side',
)
dish_nine.save!
puts "and a dish"

dish_ten = Dish.new(
  name: "CHILLI BUTTER-BHUTTA",
  description: "Corn-on-the-cob, Grilled over charcoal fire, then finished with butter, chilli, salt and lime, Chowpatty beach style",
  allergen: '',
  restaurant: dishoom_shore,
  dish_type: 'side',
)
dish_ten.save!
puts "and a dish"

puts "done"




#   10.times do
#     dish = Dish.new(
#       name: Faker::Food.dish,
#       description: Faker::Food.description,
#       allergen: ['Gluten', 'Eggs', 'Nuts', 'Shellfish', 'Soya'].sample,
#       restaurant: dishoom_shore,
#       dish_type: ['Starter', 'Main', 'Dessert', 'Drink'].sample
#     )
#     dish.save!
#     puts "and a dish"
#   end
# puts "done"


# 20.times do
#   restaurant = Restaurant.new(
#     name: Faker::Restaurant.name,
#     cuisine: ['Chinese', 'Italian', 'Portuguese', 'Indian', "American", 'Thai', "Spanish", 'Lebanese'].sample,
#     address: Faker::Address.street_address,
#     website: Faker::Internet.url,
#     phone_number: Faker::PhoneNumber.cell_phone
#   )
# end
