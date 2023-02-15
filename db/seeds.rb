puts "Deleting old data .."

Farm.destroy_all
Product.destroy_all

puts "Creating farms .."

f1 = Farm.create(name: "Sunnyside Farms", location: "Lodi, CA")
f2 = Farm.create(name: "Rabbit Hill Growers", location: "Modesto, CA")
f3 = Farm.create(name: "Pristine Pastures", location: "Seattle, WA")
f4 = Farm.create(name: "Greatful Gardens", location: "Denver, CO")
f5 = Farm.create(name: "Avonwood Farms", location: "Pleasantville, CA")

puts "Creating products .."

p1 = Product.create(farm_id: f2.id, name: "Apples", category: "fruit", description: "Sweet and juicy! Freshly picked Honeycrisp apples.", picture_link: "https://i.imgur.com/VAW1a6y.png", price: 6, stock: 1053)
p2 = Product.create(farm_id: f4.id, name: "Peaches", category: "fruit", description: "Bursting with flavor. The most delicious peaches available.", picture_link: "https://i.imgur.com/T667Zhu.png", price: 7, stock: 758)
p3 = Product.create(farm_id: f1.id, name: "Pears", category: "fruit", description: "Pears so good they make your head pop.", picture_link: "https://i.imgur.com/Sxc9QvS.png", price: 5, stock: 933)
p4 = Product.create(farm_id: f5.id, name: "Plums", category: "fruit", description: "Heirloom plums straight from our orchards.", picture_link: "https://i.imgur.com/rvfyHFL.png", price: 5, stock: 567)
p5 = Product.create(farm_id: f3.id, name: "Watermelon", category: "fruit", description: "The perfect juicy treat for any occasion.", picture_link: "https://i.imgur.com/nLquKMp.png", price: 9, stock: 458)
p6 = Product.create(farm_id: f3.id, name: "Broccoli", category: "vegetable", description: "Perfectly grown, blemish-free broccoli heads.", picture_link: "https://i.imgur.com/PSRGJkR.png", price: 3, stock: 1121)
p7 = Product.create(farm_id: f1.id, name: "Green Beans", category: "vegetable", description: "Wonderful as a simple snack or as part of a meal.", picture_link: "https://i.imgur.com/Yjb8ACR.png", price: 2, stock: 1262)
p8 = Product.create(farm_id: f5.id, name: "Asparagus", category: "vegetable", description: "Freshly grown asparagus straight from our farm to your table.", picture_link: "https://i.imgur.com/w7qyqqo.png", price: 4, stock: 1098)
p9 = Product.create(farm_id: f4.id, name: "Carrots", category: "vegetable", description: "Don't let the rabbits eat them all, order our carrots today!", picture_link: "https://i.imgur.com/5K2WvTb.png", price: 2, stock: 1439)
p10 = Product.create(farm_id: f2.id, name: "Bell Peppers", category: "vegetable", description: "Red, green, yellow or orange - they're all delicious.", picture_link: "https://i.imgur.com/w7gEPWa.png", price: 3, stock: 967)

puts "Creating users .."

u1 = User.create(username: "Jake J", role: "farmer", email: "JJ@gmail.com", password: "12345")
u2 = User.create(username: "Fiyah F", role: "buyer", email: "FF@gmail.com", password: "12345")
u3 = User.create(username: "Title T", role: "farmer", email: "TT@gmail.com", password: "12345")
u4 = User.create(username: "Hong H", role: "buyer", email: "HH@gmail.com", password: "12345")


puts "Creating purchases .."

p1 = Purchase.create(user_id: u2.id, product_id: p1.id)
p2 = Purchase.create(user_id: u2.id, product_id: p1.id)
p3 = Purchase.create(user_id: u2.id, product_id: p2.id)
p4 = Purchase.create(user_id: u2.id, product_id: p3.id)
p5 = Purchase.create(user_id: u2.id, product_id: p4.id)


p6 = Purchase.create(user_id: u4.id, product_id: p1.id)
p7 = Purchase.create(user_id: u4.id, product_id: p1.id)
p8 = Purchase.create(user_id: u4.id, product_id: p5.id)
p9 = Purchase.create(user_id: u4.id, product_id: p6.id)
p10 = Purchase.create(user_id: u4.id, product_id: p7.id)


puts "Seeding done !"