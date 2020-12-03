sushi_samba = Restaurant.new(
  name: "Sushi Samba",
  cuisine: 'Japanese',
  address: 'Heron Tower, EC2N 4AY',
  website: 'www.sushisamba.com',
  phone_number: '020 3640 7330',
)
require "open-uri"
file = URI.open('https://res.cloudinary.com/dh6gdchfj/image/upload/v1606989497/sushisamba_b75trd.jpg')
sushi_samba.photo.attach(io: file, filename: 'sushi-samba.jpg', content_type: 'image/jpg')
sushi_samba.save!
puts 'Created Restaurant'

dish_critic_one = Dish.new(
  name: "Lobster",
  description: 'Lobster, 10g oscietra caviar, 5g black truffle, nashi pear, grilled asparagus, truffle aji amarillo, crispy nori',
  allergen: 'Shellfish',
  restaurant: sushi_samba,
  dish_type: 'main',
)
dish_critic_one.save!
puts "and a dish"

dish_critic_two = Dish.new(
  name: "CHURRASCO RIO GRANDE",
  description: 'Ribeye, chorizo, picanha served with black beans, sautéed greens, farofa, SUSHISAMBA dipping sauces',
  allergen: '',
  restaurant: sushi_samba,
  dish_type: 'main',
)
dish_critic_two.save!
puts "and a dish"
