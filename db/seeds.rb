
#------.destroy_all----#
OrderItem.destroy_all
ChildOrder.destroy_all
Order.destroy_all
Item.destroy_all
Shop.destroy_all
User.destroy_all

#------SEED de USERS-----#
vincent =  User.create!(
  first_name:'Vincent',
  last_name: 'Textoris',
  email:'vincent.textoris@gmail.com',
  phone: '0611111111',
  delivery_address: '31 Rue Faidherbe, 59800 Lille',
  latitude: 50.637138,
  longitude: 3.066851,
  password: '123456'
)

romain =  User.create!(
  first_name:'Romain',
  last_name: ' Despature',
  email:'rdespature@gmail.com',
  phone: '0622222222',
  delivery_address: '22 rue basse, lille',
  latitude: 50.639077,
  longitude: 3.062780,
  password: '123456'
)

manuel =  User.create!(
  first_name:'Manuel',
  last_name: 'Sabine',
  email:'manuel.sabine@gmail.com',
  phone: '0633333333',
  delivery_address: '22 Place des Patiniers, lille',
  latitude: 50.639831,
  longitude: 3.064498,
  password: '123456'
)

juliette =  User.create!(
  first_name:'Juliette',
  last_name: 'Scheidecker ',
  email:'juscheidecker@gmail.com',
  phone: '0644444444',
  delivery_address: '8 Rue de la Clef, lille',
  latitude: 50.638416,
  longitude: 3.064993,
  password: '123456'
)

#------SEED de SHOPS-----#

starbucks_vieuxlille = Shop.create!(
  name:'Starbucks Vieux Lille',
  address: '67 Rue Esquermoise, Lille',
  latitude: 50.638257,
  longitude: 3.060587,
  phone: "09 67 72 45 90",
  horaries: "Open Monday to Sunday from 8h30 to 19h30",
  description: "The famous US coffeehouse chain now in the heart of the Vieux Lille",
  remote_photo_url: "http://img.horaires-commerces.fr/commerces/starbucks-lille/exterieur-starbucks-800.jpg"
)

starbucks_euralille = Shop.create!(
  name:'Starbucks Euralille',
  address: 'Centre Commercial Euralille, 59777 Lille',
  latitude: 50.637649,
  longitude: 3.073004,
  phone: "09 66 90 32 71",
  horaries: "Open Monday to Sunday from 8h30 to 20h30",
  description: "Well placed in the international mall of Euralille, ideal to get your caffeine shot before you catch a train either at Lille Europe or Lille Flandres stations",
  remote_photo_url: "https://lavoixdezoe.files.wordpress.com/2015/09/r-dsc_0825.jpg"
)

cafeine_coffee = Shop.create!(
  name:'Caféine Coffee',
  address: '20 rue des trois Mollettes',
  latitude: 50.640391,
  longitude: 3.060726,
  phone: "03 20 12 35 28",
  horaries: "09:30 - 19:00",
  description: "Cute spot just like in magazines ",
  remote_photo_url: "https://scontent-ams3-1.xx.fbcdn.net/v/t1.0-9/10441125_839667312728347_412198240756526494_n.jpg?oh=2b6947a38f0f320d8d94f64d4c9cd087&oe=59DBBF87"
)

impertinente = Shop.create!(
  name:'Impertinente',
  address: '9 Boulevard Papin, Lille',
  latitude: 50.628772,
  longitude: 3.069181,
  phone: "09 83 87 34 20",
  horaries: "13:30–18:30, forget about morning coffee, enjoy afternoon ones",
  description: "Cosy place to be tested urgently!",
  remote_photo_url: "http://www.chiconchoc.fr/wp-content/uploads/2015/10/11182797_456851437806611_7692634842388071749_o-1024x526.jpg"
)

tamper = Shop.create!(
  name:'Tamper',
  address: '10 Rue des Vieux Murs, Lille',
  latitude: 50.640798,
  longitude: 3.061182,
  phone: "03 20 39 28 21",
  horaries: "09:00–18:00",
  description: "Espresso Bar with a large variety of drinks and very nice staffs
  ",
  remote_photo_url: "https://scontent-ams3-1.xx.fbcdn.net/v/t1.0-9/15940873_686443638196417_5204454601504770229_n.jpg?oh=9a47ba43eb68cf2011fbfa26d00a3d7a&oe=59AD63A5"
)

coffee_makers = Shop.create!(
  name:'Coffee Makers',
  address: '151 Rue de Paris, Lille',
  latitude: 50.633230,
  longitude: 3.068097,
  phone: "03 20 39 28 67",
  horaries: "09:00–18:00",
  description: "Discover our espresso bar and tearoom in Lille and enjoy our roasted coffees on site and small home-made food",
  remote_photo_url: "http://img.over-blog-kiwi.com/1/06/68/62/20150606/ob_c8d8a4_20150515-101224.jpg"
)

wallys_coffee = Shop.create!(
  name:'Wallys Coffee',
  address: '19 Place Philippe Lebon, Lille',
  latitude: 50.627504,
  longitude: 3.062185,
  phone: "03 20 67 78 35",
  horaries: "09:00–19:00",
  description: "Your coffee shop, comfort food vegan vegan carne and grocery in the center of Lille",
  remote_photo_url: "http://lescachotteriesdelille.com/wp-content/uploads/2017/01/Wallys-Coffee-1.jpg"
)

nottinghill_gdplace = Shop.create!(
  name:'Notting Hill Grand Place',
  address: 'Place du Général De Gaulle 59000 Lille',
  latitude: 50.636572,
  longitude: 3.064147,
  phone: "03 20 56 28 23",
  horaries: "Open Monday to Saturday 08:00-20:00",
  description: "Authentic recipees from Notting Hill now available in the North of France",
  remote_photo_url: "http://1.bp.blogspot.com/_f1SXRRz5QQg/S4651xEl9SI/AAAAAAAAATM/HVrt9lUakFg/s800/24779_363820710691_712900691_5404693_8350484_n.jpg"
)

nottinghill_vieuxlille= Shop.create!(
  name:'Notting Hill Vieux Lille',
  address: '94 Rue Esquermoise, 59000 Lille',
  latitude: 50.638680,
  longitude: 3.059966,
  phone: "03 20 56 28 07",
  horaries: "Open Monday to Saturday 08:00-20:00",
  description: "US style coffee with espressos and snacks for lunch or snack: bagels, sandwiches, wraps and muffins",
  remote_photo_url: "https://s-media-cache-ak0.pinimg.com/564x/e9/73/f6/e973f6de76b467d2a3de62e2e10fcde3.jpg"
)

#------SEED d' ITEM-----#

# Starbucks menu
blonde_roast = Item.create!(
  name: "Blonde Roast",
  description: "Lightly roasted coffee that's soft, mellow and flavorful. Easy-drinking on its own and delicious with milk, sugar or flavored with vanilla, caramel or hazelnut",
  price: 4,
  shop: starbucks_euralille,
  remote_photo_url: "https://globalassets.starbucks.com/assets/594ffeee3b1442ccbd7e926c51f45776.jpg"
)

caffè_misto = Item.create!(
  name: "Caffè Misto",
  description: "A one-to-one mix of fresh brewed coffee and steamed milk add up to one distinctly delicious coffee drink",
  price: 3,
  shop: starbucks_euralille,
  remote_photo_url: "https://globalassets.starbucks.com/assets/60058630d5a14a679054712b6afa77c3.jpg"
)

decaf_pike = Item.create!(
  name: "Decaf Pike Place® Roast",
  description: "Our signature medium roasted coffee with a smooth, balanced and rich flavor, minus the caffeine",
  price: 4,
  shop: starbucks_euralille,
  remote_photo_url: "https://globalassets.starbucks.com/assets/376e8381434049798635d370bee0d7f0.jpg"
)

iced_coffee = Item.create!(
  name: "Iced Coffee",
  description: "Freshly brewed Starbucks® Iced Coffee Blend served chilled and lightly sweetened over ice",
  price: 4.2,
  shop: starbucks_euralille,
  remote_photo_url: "https://globalassets.starbucks.com/assets/12be45c393e94b0e934535c905d9d44c.jpg"
)

nitro_cold = Item.create!(
  name: "Nitro Cold Brew with Sweet Cream",
  description: "Served cold, straight from the tap, our Nitro Cold Brew is topped with a float of house-made vanilla sweet cream. The result is a subtly-sweet cascade of velvety coffee that is more sippable than ever",
  price: 4,
  shop: starbucks_euralille,
  remote_photo_url: "https://globalassets.starbucks.com/assets/9a317780dd034d3fa681c3ec10ffd35a.jpg"
)

toasted_coconut = Item.create!(
  name: "Toasted Coconut Cold Brew",
  description: "Served cold, straight from the tap, our Nitro Cold Brew is topped with a float of house-made vanilla sweet cream. The result is a subtly-sweet cascade of velvety coffee that is more sippable than ever",
  price: 5,
  shop: starbucks_euralille,
  remote_photo_url: "https://globalassets.starbucks.com/assets/ce4a720e2e104fc2a803196d74652eda.jpg"
)

blonde_roast = Item.create!(
  name: "Blonde Roast",
  description: "Lightly roasted coffee that's soft, mellow and flavorful. Easy-drinking on its own and delicious with milk, sugar or flavored with vanilla, caramel or hazelnut",
  price: 4,
  shop: starbucks_vieuxlille,
  remote_photo_url: "https://globalassets.starbucks.com/assets/594ffeee3b1442ccbd7e926c51f45776.jpg"
)

caffè_misto = Item.create!(
  name: "Caffè Misto",
  description: "A one-to-one mix of fresh brewed coffee and steamed milk add up to one distinctly delicious coffee drink",
  price: 3,
  shop: starbucks_vieuxlille,
  remote_photo_url: "https://globalassets.starbucks.com/assets/60058630d5a14a679054712b6afa77c3.jpg"
)

decaf_pike = Item.create!(
  name: "Decaf Pike Place® Roast",
  description: "Our signature medium roasted coffee with a smooth, balanced and rich flavor, minus the caffeine",
  price: 4,
  shop: starbucks_vieuxlille,
  remote_photo_url: "https://globalassets.starbucks.com/assets/376e8381434049798635d370bee0d7f0.jpg"
)

iced_coffee = Item.create!(
  name: "Iced Coffee",
  description: "Freshly brewed Starbucks® Iced Coffee Blend served chilled and lightly sweetened over ice",
  price: 4.2,
  shop: starbucks_vieuxlille,
  remote_photo_url: "https://globalassets.starbucks.com/assets/12be45c393e94b0e934535c905d9d44c.jpg"
)

nitro_cold = Item.create!(
  name: "Nitro Cold Brew with Sweet Cream",
  description: "Served cold, straight from the tap, our Nitro Cold Brew is topped with a float of house-made vanilla sweet cream. The result is a subtly-sweet cascade of velvety coffee that is more sippable than ever",
  price: 4,
  shop: starbucks_vieuxlille,
  remote_photo_url: "https://globalassets.starbucks.com/assets/9a317780dd034d3fa681c3ec10ffd35a.jpg"
)

toasted_coconut = Item.create!(
  name: "Toasted Coconut Cold Brew",
  description: "Served cold, straight from the tap, our Nitro Cold Brew is topped with a float of house-made vanilla sweet cream. The result is a subtly-sweet cascade of velvety coffee that is more sippable than ever",
  price: 5,
  shop: starbucks_vieuxlille,
  remote_photo_url: "https://globalassets.starbucks.com/assets/ce4a720e2e104fc2a803196d74652eda.jpg"
)

#NottingHill menu
ristretto = Item.create!(
  name: "Ristretto",
  description: "Our signature blend of pure espresso coffee served with a glass of water on the side",
  price: 3,
  shop: nottinghill_vieuxlille,
  remote_photo_url: "http://www.coffeeclub.com.au/wp-content/uploads/2016/06/ristretto-655x370.jpg"
)

macchiato = Item.create!(
  name: "Macchiato",
  description: "Our signature blend of coffee topped with one spoon of milk crema.",
  price: 3.5,
  shop: nottinghill_vieuxlille,
  remote_photo_url: "http://www.coffeeclub.com.au/wp-content/uploads/2016/06/macchiato-655x370.jpg"
)

vienna = Item.create!(
  name: "Vienna",
  description: "Our signature blend of coffee blended with hot water and topped with whipped cream, chocolate powder and a chocolate square",
  shop: nottinghill_vieuxlille,
  remote_photo_url: "http://www.coffeeclub.com.au/wp-content/uploads/2016/06/vienna-655x370.jpg"
)

hot_chocolate = Item.create!(
  name: "Hot Chocolate",
  description: "Hot creamy milk blended with our favourite chocolate powder, topped with marshmallows and dusted with chocolate",
  shop: nottinghill_vieuxlille,
  remote_photo_url: "http://www.coffeeclub.com.au/wp-content/uploads/2016/06/Hot-Chocolate-655x370.jpg"
)

affogato = Item.create!(
  name: "Affogato",
  description: "Our signature blend of double shot coffee with one scoop of vanilla ice cream",
  shop: nottinghill_vieuxlille,
  remote_photo_url: "http://www.coffeeclub.com.au/wp-content/uploads/2016/06/affogato-655x370.jpg"
)

ristretto = Item.create!(
  name: "Ristretto",
  description: "Our signature blend of pure espresso coffee served with a glass of water on the side",
  price: 3,
  shop: nottinghill_gdplace,
  remote_photo_url: "http://www.coffeeclub.com.au/wp-content/uploads/2016/06/ristretto-655x370.jpg"
)

macchiato = Item.create!(
  name: "Macchiato",
  description: "Our signature blend of coffee topped with one spoon of milk crema.",
  price: 3.5,
  shop: nottinghill_gdplace,
  remote_photo_url: "http://www.coffeeclub.com.au/wp-content/uploads/2016/06/macchiato-655x370.jpg"
)

vienna = Item.create!(
  name: "Vienna",
  description: "Our signature blend of coffee blended with hot water and topped with whipped cream, chocolate powder and a chocolate square",
  shop: nottinghill_gdplace,
  remote_photo_url: "http://www.coffeeclub.com.au/wp-content/uploads/2016/06/vienna-655x370.jpg"
)

hot_chocolate = Item.create!(
  name: "Hot Chocolate",
  description: "Hot creamy milk blended with our favourite chocolate powder, topped with marshmallows and dusted with chocolate",
  shop: nottinghill_gdplace,
  remote_photo_url: "http://www.coffeeclub.com.au/wp-content/uploads/2016/06/Hot-Chocolate-655x370.jpg"
)

affogato = Item.create!(
  name: "Affogato",
  description: "Our signature blend of double shot coffee with one scoop of vanilla ice cream",
  shop: nottinghill_gdplace,
  remote_photo_url: "http://www.coffeeclub.com.au/wp-content/uploads/2016/06/affogato-655x370.jpg"
)

#Other coffee shops menu
short_latte = Item.create!(
  name: "Short Latte",
  description: "Our signature blend of coffee blended with hot creamy milk in a short glass",
  price: 3,
  shop: cafeine_coffee,
  remote_photo_url: "http://www.coffeeclub.com.au/wp-content/uploads/2016/06/short-latte-655x370.jpg"
)

tall_latte = Item.create!(
  name: "Tall Latte",
  description: "Our signature blend of coffee blended with hot creamy milk in a tall glass.",
  price: 4.5,
  shop: cafeine_coffee,
  remote_photo_url: "http://www.coffeeclub.com.au/wp-content/uploads/2016/06/tall-latte-655x370.jpg"
)

piccolo_latte = Item.create!(
  name: "Piccolo Latte",
  description: "Our signature blend of coffee blended with hot creamy milk and served in a piccolo glass",
  price: 3,
  shop: cafeine_coffee,
  remote_photo_url: "http://www.coffeeclub.com.au/wp-content/uploads/2016/06/piccolo-latte-655x370.jpg"
)

cappuccino_cafeine = Item.create!(
  name: "Cappuccino",
  description: "Our signature blend of coffee with a hot creamy milk and dusted with chocolate powder",
  price: 3,
  shop: cafeine_coffee,
  remote_photo_url: "http://www.coffeeclub.com.au/wp-content/uploads/2016/06/piccolo-latte-655x370.jpg"
)

chai_latte = Item.create!(
  name: "Chai Latte",
  description: "Our signature blend of coffee with hot textured milk infused with Chai syrup and dusted with cinnamon sugar",
  price: 4,
  shop: cafeine_coffee,
  remote_photo_url: "http://www.coffeeclub.com.au/wp-content/uploads/2016/06/chai-latte-655x370.jpg"
)
#-------------------------#

short_latte = Item.create!(
  name: "Short Latte",
  description: "Our signature blend of coffee blended with hot creamy milk in a short glass",
  price: 3,
  shop: impertinente,
  remote_photo_url: "http://www.coffeeclub.com.au/wp-content/uploads/2016/06/short-latte-655x370.jpg"
)

tall_latte = Item.create!(
  name: "Tall Latte",
  description: "Our signature blend of coffee blended with hot creamy milk in a tall glass.",
  price: 4.5,
  shop: impertinente,
  remote_photo_url: "http://www.coffeeclub.com.au/wp-content/uploads/2016/06/tall-latte-655x370.jpg"
)

piccolo_latte = Item.create!(
  name: "Piccolo Latte",
  description: "Our signature blend of coffee blended with hot creamy milk and served in a piccolo glass",
  price: 3,
  shop: impertinente,
  remote_photo_url: "http://www.coffeeclub.com.au/wp-content/uploads/2016/06/piccolo-latte-655x370.jpg"
)

cappuccino_cafeine = Item.create!(
  name: "Cappuccino",
  description: "Our signature blend of coffee with a hot creamy milk and dusted with chocolate powder",
  price: 3,
  shop: impertinente,
  remote_photo_url: "http://www.coffeeclub.com.au/wp-content/uploads/2016/06/piccolo-latte-655x370.jpg"
)

chai_latte = Item.create!(
  name: "Chai Latte",
  description: "Our signature blend of coffee with hot textured milk infused with Chai syrup and dusted with cinnamon sugar",
  price: 4,
  shop: impertinente,
  remote_photo_url: "http://www.coffeeclub.com.au/wp-content/uploads/2016/06/chai-latte-655x370.jpg"
)
#-------------------------#

short_latte = Item.create!(
  name: "Short Latte",
  description: "Our signature blend of coffee blended with hot creamy milk in a short glass",
  price: 3,
  shop: tamper,
  remote_photo_url: "http://www.coffeeclub.com.au/wp-content/uploads/2016/06/short-latte-655x370.jpg"
)

tall_latte = Item.create!(
  name: "Tall Latte",
  description: "Our signature blend of coffee blended with hot creamy milk in a tall glass.",
  price: 4.5,
  shop: tamper,
  remote_photo_url: "http://www.coffeeclub.com.au/wp-content/uploads/2016/06/tall-latte-655x370.jpg"
)

piccolo_latte = Item.create!(
  name: "Piccolo Latte",
  description: "Our signature blend of coffee blended with hot creamy milk and served in a piccolo glass",
  price: 3,
  shop: tamper,
  remote_photo_url: "http://www.coffeeclub.com.au/wp-content/uploads/2016/06/piccolo-latte-655x370.jpg"
)

cappuccino_cafeine = Item.create!(
  name: "Cappuccino",
  description: "Our signature blend of coffee with a hot creamy milk and dusted with chocolate powder",
  price: 3,
  shop: tamper,
  remote_photo_url: "http://www.coffeeclub.com.au/wp-content/uploads/2016/06/piccolo-latte-655x370.jpg"
)

chai_latte = Item.create!(
  name: "Chai Latte",
  description: "Our signature blend of coffee with hot textured milk infused with Chai syrup and dusted with cinnamon sugar",
  price: 4,
  shop: tamper,
  remote_photo_url: "http://www.coffeeclub.com.au/wp-content/uploads/2016/06/chai-latte-655x370.jpg"
)
#-------------------------#

short_latte = Item.create!(
  name: "Short Latte",
  description: "Our signature blend of coffee blended with hot creamy milk in a short glass",
  price: 3,
  shop: coffee_makers,
  remote_photo_url: "http://www.coffeeclub.com.au/wp-content/uploads/2016/06/short-latte-655x370.jpg"
)

tall_latte = Item.create!(
  name: "Tall Latte",
  description: "Our signature blend of coffee blended with hot creamy milk in a tall glass.",
  price: 4.5,
  shop: coffee_makers,
  remote_photo_url: "http://www.coffeeclub.com.au/wp-content/uploads/2016/06/tall-latte-655x370.jpg"
)

piccolo_latte = Item.create!(
  name: "Piccolo Latte",
  description: "Our signature blend of coffee blended with hot creamy milk and served in a piccolo glass",
  price: 3,
  shop: coffee_makers,
  remote_photo_url: "http://www.coffeeclub.com.au/wp-content/uploads/2016/06/piccolo-latte-655x370.jpg"
)

cappuccino_cafeine = Item.create!(
  name: "Cappuccino",
  description: "Our signature blend of coffee with a hot creamy milk and dusted with chocolate powder",
  price: 3,
  shop: coffee_makers,
  remote_photo_url: "http://www.coffeeclub.com.au/wp-content/uploads/2016/06/piccolo-latte-655x370.jpg"
)

chai_latte = Item.create!(
  name: "Chai Latte",
  description: "Our signature blend of coffee with hot textured milk infused with Chai syrup and dusted with cinnamon sugar",
  price: 4,
  shop: coffee_makers,
  remote_photo_url: "http://www.coffeeclub.com.au/wp-content/uploads/2016/06/chai-latte-655x370.jpg"
)
#-------------------------#
short_latte = Item.create!(
  name: "Short Latte",
  description: "Our signature blend of coffee blended with hot creamy milk in a short glass",
  price: 3,
  shop: wallys_coffee,
  remote_photo_url: "http://www.coffeeclub.com.au/wp-content/uploads/2016/06/short-latte-655x370.jpg"
)

tall_latte = Item.create!(
  name: "Tall Latte",
  description: "Our signature blend of coffee blended with hot creamy milk in a tall glass.",
  price: 4.5,
  shop: wallys_coffee,
  remote_photo_url: "http://www.coffeeclub.com.au/wp-content/uploads/2016/06/tall-latte-655x370.jpg"
)

piccolo_latte = Item.create!(
  name: "Piccolo Latte",
  description: "Our signature blend of coffee blended with hot creamy milk and served in a piccolo glass",
  price: 3,
  shop: wallys_coffee,
  remote_photo_url: "http://www.coffeeclub.com.au/wp-content/uploads/2016/06/piccolo-latte-655x370.jpg"
)

cappuccino_cafeine = Item.create!(
  name: "Cappuccino",
  description: "Our signature blend of coffee with a hot creamy milk and dusted with chocolate powder",
  price: 3,
  shop: wallys_coffee,
  remote_photo_url: "http://www.coffeeclub.com.au/wp-content/uploads/2016/06/piccolo-latte-655x370.jpg"
)

chai_latte = Item.create!(
  name: "Chai Latte",
  description: "Our signature blend of coffee with hot textured milk infused with Chai syrup and dusted with cinnamon sugar",
  price: 4,
  shop: wallys_coffee,
  remote_photo_url: "http://www.coffeeclub.com.au/wp-content/uploads/2016/06/chai-latte-655x370.jpg"
)

#------SEED d' ORDER-----#
order1_confirmed_takeaway = Order.create!(
  user: vincent,
  status: false, #confirmed
  delivery_type: false #take away
)

order2_confirmed_delivery = Order.create!(
  user: romain,
  status: false, #confirmed
  delivery_type: true # delivery
)

order3_confirmed_takeaway = Order.create!(
  user: manuel,
  status: true, #pending
  delivery_type: false #take away
)

order4_pending_delivery = Order.create!(
  user: juliette,
  status: true, #pending
  delivery_type: true # delivery
)

order5_pending_delivery = Order.create!(
  user: romain,
  status: true, #pending
  delivery_type: true # delivery
)

order6_pending_delivery = Order.create!(
  user: vincent,
  status: true, #pending
  delivery_type: true # delivery
)

order7_pending_delivery = Order.create!(
  user: manuel,
  status: true, #pending
  delivery_type: true # delivery
)

order8_pending_delivery = Order.create!(
  user: juliette,
  status: true, #pending
  delivery_type: true # delivery
)

#------SEED d' ORDER ITEM-----#
OrderItem.create!(order: order1_confirmed_takeaway, item: blonde_roast)
OrderItem.create!(order: order1_confirmed_takeaway, item: caffè_misto)
OrderItem.create!(order: order1_confirmed_takeaway, item: decaf_pike)
OrderItem.create!(order: order2_confirmed_delivery, item: chai_latte)
OrderItem.create!(order: order2_confirmed_delivery, item: cappuccino_cafeine)
OrderItem.create!(order: order2_confirmed_delivery, item: piccolo_latte)
OrderItem.create!(order: order3_confirmed_takeaway, item: iced_coffee)
OrderItem.create!(order: order4_pending_delivery, item: toasted_coconut)
OrderItem.create!(order: order4_pending_delivery, item: nitro_cold)
OrderItem.create!(order: order5_pending_delivery, item: piccolo_latte)
OrderItem.create!(order: order5_pending_delivery, item: chai_latte)
OrderItem.create!(order: order6_pending_delivery, item: blonde_roast)
OrderItem.create!(order: order6_pending_delivery, item: iced_coffee)
OrderItem.create!(order: order7_pending_delivery, item: piccolo_latte)
OrderItem.create!(order: order7_pending_delivery, item: chai_latte)
OrderItem.create!(order: order8_pending_delivery, item: blonde_roast)
OrderItem.create!(order: order8_pending_delivery, item: caffè_misto)
OrderItem.create!(order: order8_pending_delivery, item: iced_coffee)
OrderItem.create!(order: order8_pending_delivery, item: toasted_coconut)

#------SEED de CHILD ORDER-----#
ChildOrder.create!(main_order: order1_confirmed_takeaway, order: order4_pending_delivery)
ChildOrder.create!(main_order: order3_confirmed_takeaway, order: order8_pending_delivery)
