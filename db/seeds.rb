require 'json'
require 'open-uri'
Restaurant.destroy_all
puts "Creating some restaurants"

# dishoom_cg = Restaurant.new(
#   name: 'Dishoom Covent Garden',
#   cuisine: 'Indian',
#   address: "12 Upper St Martin's Lane, WC2H 9FB",
#   website: 'www.dishoom.com/covent-garden',
#   phone_number: '020 7420 9320',
# )
# require "open-uri"
# file = URI.open('https://res.cloudinary.com/dh6gdchfj/image/upload/v1606940861/dishoom-cg_ggahzz.jpg')
# dishoom_cg.photo.attach(io: file, filename: 'dishoom-ken.png', content_type: 'image/jpg')
# dishoom_cg.save!
# puts 'Created Restaurant'

# dishoom_carnaby = Restaurant.new(
#   name: 'Dishoom Carnaby',
#   cuisine: 'Indian',
#   address: "22 Kingly Street, W1B 5QB",
#   website: 'www.dishoom.com/carnaby',
#   phone_number: '0207 420 9322',
# )
# require "open-uri"
# file = URI.open('https://res.cloudinary.com/dh6gdchfj/image/upload/v1606941452/dishoom-carnaby_ruwwfa.jpg')
# dishoom_carnaby.photo.attach(io: file, filename: 'dishoom-ken.png', content_type: 'image/jpg')
# dishoom_carnaby.save!
# puts 'Created Restaurant'

# dishoom_kensington = Restaurant.new(
#   name: 'Dishoom Kensington',
#   cuisine: 'Indian',
#   address: '4 Derry Street, W8 5SE',
#   website: 'www.dishoom.com/kensington',
#   phone_number: '0207 420 9325',
# )
# require "open-uri"
# file = URI.open('https://res.cloudinary.com/dh6gdchfj/image/upload/v1606936658/dishoom-ken_kdzhw5.jpg')
# dishoom_kensington.photo.attach(io: file, filename: 'dishoom-ken.png', content_type: 'image/jpg')
# dishoom_kensington.save!
# puts 'Created Restaurant'

# dishoom_kings = Restaurant.new(
#   name: "Dishoom King's Cross",
#   cuisine: 'Indian',
#   address: '5 Stable Street, N1C 4AB',
#   website: 'www.dishoom.com/kings',
#   phone_number: '020 7420 9321',
# )
# require "open-uri"
# file = URI.open('https://res.cloudinary.com/dh6gdchfj/image/upload/v1606941958/dishoom-kings_uplfuw.jpg')
# dishoom_kings.photo.attach(io: file, filename: 'dishoom-ken.png', content_type: 'image/jpg')
# dishoom_kings.save!
# puts 'Created Restaurant'

# #Restaurant to select in Demo
# dishoom_shore = Restaurant.new(
#   name: 'Dishoom Shoreditch',
#   cuisine: 'Indian',
#   address: "7 Boundary Street, E2 7JE",
#   website: 'www.dishoom.com/shoreditch',
#   phone_number: '020 7420 9324',
# )
# require "open-uri"
# file = URI.open('https://res.cloudinary.com/dh6gdchfj/image/upload/v1606941288/dishoom-shore_nwfvwt.jpg')
# dishoom_shore.photo.attach(io: file, filename: 'dishoom-ken.png', content_type: 'image/jpg')
# dishoom_shore.save!
# puts 'Created Restaurant'

# dish_one = Dish.new(
#   name: "Nalli Nihari Biryani",
#   description: 'Nihari – a famously hearty and robust dish – is synonymous with celebration. Made into a biryani, it is doubly so. Tender shank of lamb is layered with rice and caramelised onions then sealed beneath a pastry blanket. Enriched further with kaleji (chicken liver) raita and nihari gravy',
#   allergen: 'Gluten',
#   restaurant: dishoom_shore,
#   dish_type: 'main',
# )
# dish_one.save!
# puts "and a dish"

# dish_two = Dish.new(
#   name: "Paneer Pineapple Tikka",
#   description: 'Paneer is vegetarian first-class fare and a subtle cheese to make. Marinated then gently charred with unexpected pineapple',
#   allergen: 'Dairy',
#   restaurant: dishoom_shore,
#   dish_type: 'main',
# )
# dish_two.save!
# puts "and a dish"

# dish_three = Dish.new(
#   name: "Chole Puri",
#   description: 'Puffed puris lie next to a hearty bowl of spiced chickpea curry, with sweet halwa alongside. Eat altogether',
#   allergen: 'Shellfish',
#   restaurant: dishoom_shore,
#   dish_type: 'main',
# )
# dish_three.save!
# puts "and a dish"

# dish_four = Dish.new(
#   name: "Lamb Samosas",
#   description: 'Gujarati filo (not Punjabi shortcrust) stuffed with minced lamb, onions and spices',
#   allergen: 'Gluten',
#   restaurant: dishoom_shore,
#   dish_type: 'starter',
# )
# dish_four.save!
# puts "and a dish"

# dish_five = Dish.new(
#   name: "DISHOOM HOUSE CHAAT",
#   description: 'Warm-cold, sweet-tangy, moreish. Golden-fried sweet potato covered with cool yoghurt, pomegranate, beetroot, radish and carrot. Tamarind drizzle and green chutney lift it nicely',
#   allergen: 'Dairy',
#   restaurant: dishoom_shore,
#   dish_type: 'starter',
# )
# dish_five.save!
# puts "and a dish"

# dish_six = Dish.new(
#   name: "PRAWN KOLIWADA",
#   description: "Bombay's Koli (fishermen) Wada (district) recipe: a bowl of delicate, crispy morsels – perfect for chutney-dipping",
#   allergen: 'Shellfish',
#   restaurant: dishoom_shore,
#   dish_type: 'starter',
# )
# dish_six.save!
# puts "and a dish"

# dish_seven = Dish.new(
#   name: "VICEROY’S OLD-FASHIONED",
#   description: "The sort of drink in which Mountbatten may have found welcome repose. A bottle-aged muddle of Woodford Reserve Bourbon, bayleaf reduction, green tea and so on",
#   allergen: '',
#   restaurant: dishoom_shore,
#   dish_type: 'drink',
# )
# dish_seven.save!
# puts "and a dish"

# dish_eight = Dish.new(
#   name: "CHAI PAANCH",
#   description: "Lemon shrub with Johnnie Walker Black Label, House Chai, Gosling’s dark rum, and two liqueurs: one ginger, one 80percent cocoa. Clear, complicated and sweet",
#   allergen: '',
#   restaurant: dishoom_shore,
#   dish_type: 'drink',
# )
# dish_eight.save!
# puts "and a dish"

# dish_nine = Dish.new(
#   name: "KALA CHANA SALAD",
#   description: "Shredded lettuce and kale, red and yellow capsicums, black chickpeas and a little red chilli",
#   allergen: '',
#   restaurant: dishoom_shore,
#   dish_type: 'side',
# )
# dish_nine.save!
# puts "and a dish"

# dish_ten = Dish.new(
#   name: "CHILLI BUTTER-BHUTTA",
#   description: "Corn-on-the-cob, Grilled over charcoal fire, then finished with butter, chilli, salt and lime, Chowpatty beach style",
#   allergen: '',
#   restaurant: dishoom_shore,
#   dish_type: 'side',
# )
# dish_ten.save!
# puts "and a dish"

# #Drinks restaurant 1
# rapsa = Restaurant.new(
#   name: 'Rapsa @ Hoxton 100',
#   cuisine: 'Indian',
#   address: "100-102 Hoxton St, N1 6SG",
#   website: 'www.rapsa.co.uk',
#   phone_number: '020 7729 1444',
# )
# require "open-uri"
# file = URI.open('https://res.cloudinary.com/dh6gdchfj/image/upload/v1606988661/hoxton100_vnaope.jpg')
# rapsa.photo.attach(io: file, filename: 'hoxton100.png', content_type: 'image/jpg')
# rapsa.save!
# puts 'Created Restaurant'

# rapsa_one = Dish.new(
#   name: "MOJITO",
#   description: "Bacardi Carta Blanca rum, fresh mint, fresh lime, sugar syrup and soda. Or make it fruity with strawberry or raspberry purée",
#   allergen: '',
#   restaurant: rapsa,
#   dish_type: 'drink',
# )
# rapsa_one.save!
# puts "and a dish"

# rapsa_two = Dish.new(
#   name: "NEGRONI RUBINO",
#   description: "Bombay Sapphire gin, Campari, Martini Riserva Rubino. Garnished with orange",
#   allergen: '',
#   restaurant: rapsa,
#   dish_type: 'drink',
# )
# rapsa_two.save!
# puts "and a dish"

# rapsa_three = Dish.new(
#   name: "PORN STAR MARTINI",
#   description: "Absolut Vanilla vodka and a fruit blend with passionfruit. Served with a shot of Prosecco",
#   allergen: '',
#   restaurant: rapsa,
#   dish_type: 'drink',
# )
# rapsa_three.save!
# puts "and a dish"

# rapsa_four = Dish.new(
#   name: "ESPRESSO MARTINI",
#   description: "This classic after-dinner drink, featuring Ketel One vodka, Tia Maria, coffee and a chocolate powder dusting",
#   allergen: '',
#   restaurant: rapsa,
#   dish_type: 'drink',
# )
# rapsa_four.save!
# puts "and a dish"

# rapsa_five = Dish.new(
#   name: "PEACH & MINT JULEP",
#   description: "Hailing from the American south and served in a julep cup, this classic cocktail mixes the kick of Maker’s Mark bourbon whisky with soft white peach, sugar syrup and fresh mint",
#   allergen: '',
#   restaurant: rapsa,
#   dish_type: 'drink',
# )
# rapsa_five.save!
# puts "and a dish"

# rapsa_six = Dish.new(
#   name: "LONG ISLAND ICED TEA",
#   description: "Ketel One vodka, Bombay Sapphire gin, Olmeca tequila, Bacardi Carta Blanca rum, Cointreau, lemon and Pepsi Max",
#   allergen: '',
#   restaurant: rapsa,
#   dish_type: 'drink',
# )
# rapsa_six.save!
# puts "and a dish"

# rapsa_seven = Dish.new(
#   name: "PERONI NASTRO AZZURRO",
#   description: "330ml Lager, ITALY, 5.1% VOL",
#   allergen: '',
#   restaurant: rapsa,
#   dish_type: 'drink',
# )
# rapsa_seven.save!
# puts "and a dish"

# rapsa_eight = Dish.new(
#   name: "BEAVERTOWN GAMMA RAY",
#   description: "330ml Can American-style Pale Ale, ENGLAND, 5.4% VOL",
#   allergen: '',
#   restaurant: rapsa,
#   dish_type: 'drink',
# )
# rapsa_eight.save!
# puts "and a dish"

# rapsa_nine = Dish.new(
#   name: "CORONA EXTRA",
#   description: "330ml Sunshine Lager, MEXICO, 4.5% VOL",
#   allergen: '',
#   restaurant: rapsa,
#   dish_type: 'drink',
# )
# rapsa_nine.save!
# puts "and a dish"

# rapsa_ten = Dish.new(
#   name: "HIVER BLONDE",
#   description: "330ml Honey Beer, ENGLAND, 4.5% VOL",
#   allergen: '',
#   restaurant: rapsa,
#   dish_type: 'drink',
# )
# rapsa_ten.save!
# puts "and a dish"

# #Second drink restaurant
# records = Restaurant.new(
#   name: 'Old St Records',
#   cuisine: 'Bar',
#   address: "350-356 Old Street, EC1V 9NQ",
#   website: 'www.oldstreetrecords.com',
#   phone_number: '0203 006 5911',
# )
# require "open-uri"
# file = URI.open('https://res.cloudinary.com/dh6gdchfj/image/upload/v1606989717/OldStRecords_rv0sb6.jpg')
# records.photo.attach(io: file, filename: 'records.png', content_type: 'image/jpg')
# records.save!
# puts 'Created Restaurant'

# records_one = Dish.new(
#   name: "Aperol Spritz",
#   description: "Aperol, Prosecco, soda",
#   allergen: '',
#   restaurant: records,
#   dish_type: 'drink',
# )
# records_one.save!
# puts "and a dish"

# records_two = Dish.new(
#   name: "LAGERITA",
#   description: "8oz Frozen Margarita with half lager",
#   allergen: '',
#   restaurant: records,
#   dish_type: 'drink',
# )
# records_two.save!
# puts "and a dish"

# records_three = Dish.new(
#   name: "MANGO & PASSIONFRUIT DAIQUIRI",
#   description: "Mango puree, Passionfruit syrup, Bacardi Carta Oro and fresh Lime",
#   allergen: '',
#   restaurant: records,
#   dish_type: 'drink',
# )
# records_three.save!
# puts "and a dish"

# records_four = Dish.new(
#   name: "Elderflower Fizz",
#   description: "Grey Goose Vodka, Elderflower cordial, fresh Lemon, St Germain Elderflower Liqueur, soda",
#   allergen: '',
#   restaurant: records,
#   dish_type: 'drink',
# )
# records_four.save!
# puts "and a dish"

# records_five = Dish.new(
#   name: "BACARDI MOJITO",
#   description: "Bacardi Carta Blanca, fresh Lime, fresh Mint, brown sugar, soda",
#   allergen: '',
#   restaurant: records,
#   dish_type: 'drink',
# )
# records_five.save!
# puts "and a dish"

# records_six = Dish.new(
#   name: "ARTOLAS WHITE, VIDIGAL Spain",
#   description: "Refreshing nose of tropical fruits with emphasis on the passion fruit character",
#   allergen: '',
#   restaurant: records,
#   dish_type: 'drink',
# )
# records_six.save!
# puts "and a dish"

# records_seven = Dish.new(
#   name: "CHENIN BLANC, STORMY CAPE South Africa",
#   description: "Very fruity and fresh, tropical fruit, green apple, citrus",
#   allergen: '',
#   restaurant: records,
#   dish_type: 'drink',
# )
# records_seven.save!
# puts "and a dish"

# records_eight = Dish.new(
#   name: "PINOT GRIGIO, VIA NOVA Italy",
#   description: "Easy-drinking, well-balanced, lemony",
#   allergen: '',
#   restaurant: records,
#   dish_type: 'drink',
# )
# records_eight.save!
# puts "and a dish"

# records_nine = Dish.new(
#   name: "SAUVIGNON BLANC, VINIMAR Chile",
#   description: "Refreshing, juicy, filling the nose with gooseberry and the mouth with grapefruit",
#   allergen: '',
#   restaurant: records,
#   dish_type: 'drink',
# )
# records_nine.save!
# puts "and a dish"

# records_ten = Dish.new(
#   name: "PINOT GRIGIO BLUSH, SARTORI Italy",
#   description: " Crisp, clean summer fruit flavours, delicate pink in colour",
#   allergen: '',
#   restaurant: records,
#   dish_type: 'drink',
# )
# records_ten.save!
# puts "and a dish"

# #Cocotte restaurant
# cocotte = Restaurant.new(
#   name: "Cocotte Shoreditch",
#   cuisine: 'French',
#   address: '8 Hoxton Square, N1 6NU',
#   website: 'hoxton@mycocotte.uk',
#   phone_number: '020 7033 4277',
# )
# require "open-uri"
# file = URI.open('https://res.cloudinary.com/dh6gdchfj/image/upload/v1606990819/cocotte_svns77.jpg')
# cocotte.photo.attach(io: file, filename: 'cocotte.jpg', content_type: 'image/jpg')
# cocotte.save!
# puts 'Created Restaurant'

# cocotte_one = Dish.new(
#   name: "Crispy Chicken Burger",
#   description: 'Panko crispy chicken burger, served on a brioche bun, with onion & tomato relish, and shredded lettuce mixed with black pepper & mayo',
#   allergen: 'Gluten',
#   restaurant: cocotte,
#   dish_type: 'main',
# )
# cocotte_one.save!
# puts "and a dish"

# cocotte_two = Dish.new(
#   name: "Kale & Roasted Pepper",
#   description: 'Kale, roasted pepper, pumpkin, sunflower & sesame seeds, walnut & tahini dressing',
#   allergen: 'Sesame, Nuts',
#   restaurant: cocotte,
#   dish_type: 'main',
# )
# cocotte_two.save!
# puts "and a dish"

# #Sushisamba Restaurant
# sushi_samba = Restaurant.new(
#   name: "Sushi Samba",
#   cuisine: 'Japanese/Brazilian',
#   address: 'Heron Tower, EC2N 4AY',
#   website: 'www.sushisamba.com',
#   phone_number: '020 3640 7330',
# )
# require "open-uri"
# file = URI.open('https://res.cloudinary.com/dh6gdchfj/image/upload/v1606989497/sushisamba_b75trd.jpg')
# sushi_samba.photo.attach(io: file, filename: 'sushi-samba.jpg', content_type: 'image/jpg')
# sushi_samba.save!
# puts 'Created Restaurant'

# dish_critic_one = Dish.new(
#   name: "Lobster",
#   description: 'Lobster, 10g oscietra caviar, 5g black truffle, nashi pear, grilled asparagus, truffle aji amarillo, crispy nori',
#   allergen: 'Shellfish',
#   restaurant: sushi_samba,
#   dish_type: 'main',
# )
# dish_critic_one.save!
# puts "and a dish"

# dish_critic_two = Dish.new(
#   name: "CHURRASCO RIO GRANDE",
#   description: 'Ribeye, chorizo, picanha served with black beans, sautéed greens, farofa, SUSHISAMBA dipping sauces',
#   allergen: '',
#   restaurant: sushi_samba,
#   dish_type: 'main',
# )
# dish_critic_two.save!
# puts "and a dish"
# puts "done"

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


url = 'https://api.apify.com/v2/datasets/0crtfRV7SXPTmdtKr/items?clean=true&format=json'
rest_serialized = open(url).read
rest = JSON.parse(rest_serialized)

num = 0

while num < 23000
  restaurant = Restaurant.new(
    name: rest[num]['name'],
    address: rest[num]['address'],
    cuisine: rest[num]['cuisine'][0],
    website: rest[num]['website'],
    phone_number: rest[num]['phone']
    )
  num += 1
  restaurant.save!
  puts "restaurant created"
end

puts "done"





























