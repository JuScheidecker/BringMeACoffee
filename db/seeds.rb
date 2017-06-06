
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

cafeine = Shop.create!(
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

#A SUPPPRIMER
sogood = Shop.create!(
  name:'So Good',
  address: '163 Avenue de Bretagne, Lille',
  latitude: 50.634213,
  longitude: 3.021055
  )

#A SUPPPRIMER
classcroute = Shop.create!(
  name:'Class croute',
  address: '166 Avenue de Bretagne, Lille',
  latitude: 50.634238,
  longitude: 3.020883
)

#------SEED d' ITEM-----#

# espresso_nh = Item.create!(
#   name:'espresso',
#   description:'7 grammes de café fraîchement moulu',
#   price: 2 ,
#   shop: nottinghill_gdplace,
#   remote_photo_url: "http://www.nottinghill-coffee.com/wp-content/uploads/2014/08/bossonschaudes-a.jpg",
# )

latte_sogood = Item.create!(
  name:'Cafe latte',
  description:'Un mélange de 50% robusta et 50% arabica',
  price: 3.5,
  shop: sogood
  )

capuccino_sogood = Item.create!(
  name:'Capuccino',
  description: "Café italien, servi dans une grande tasse, à base d'un expresso et coiffé de sa mousse de lait",
  price: 4.2,
  shop: sogood
  )

frappucino_sogood = Item.create!(
  name:'Frappucino',
  description: "Summer capuccino",
  price: 4.2,
  shop: sogood
  )

expresso_classcroute = Item.create!(
  name:'Expresso',
  description: "Café court, très corsé avec un arôme puissant",
  price: 2.5 ,
  shop: classcroute
  )

theglace_classcroute = Item.create!(
  name:'The glacé',
  description: "Du thé vert, des glaçons et un soupçon de citron",
  price: 3.5 ,
  shop: classcroute,
  )

infusion_classcroute = Item.create!(
  name:'Infusion',
  description: "Petite tisane pour les amateurs de sensations douces",
  price: 3 ,
  shop: classcroute,
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

order3_pending_takeaway = Order.create!(
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

#------SEED de CHILD ORDER-----#
ChildOrder.create!(main_order: order1_confirmed_takeaway, order: order4_pending_delivery)
# ChildOrder.create!(main_order: order3_confirmed_takeaway, order: order4_confirmed_delivery)

#------SEED d' ORDER ITEM-----#
OrderItem.create!(order: order1_confirmed_takeaway, item: latte_sogood)
OrderItem.create!(order: order1_confirmed_takeaway, item: capuccino_sogood)
OrderItem.create!(order: order1_confirmed_takeaway, item: frappucino_sogood)
OrderItem.create!(order: order2_confirmed_delivery, item: expresso_classcroute)
OrderItem.create!(order: order2_confirmed_delivery, item: theglace_classcroute)
OrderItem.create!(order: order2_confirmed_delivery, item: infusion_classcroute)
OrderItem.create!(order: order3_pending_takeaway, item: theglace_classcroute)
OrderItem.create!(order: order4_pending_delivery, item: latte_sogood)
OrderItem.create!(order: order4_pending_delivery, item: frappucino_sogood)
OrderItem.create!(order: order5_pending_delivery, item: expresso_classcroute)
OrderItem.create!(order: order5_pending_delivery, item: theglace_classcroute)
OrderItem.create!(order: order5_pending_delivery, item: infusion_classcroute)
OrderItem.create!(order: order6_pending_delivery, item: capuccino_sogood)
OrderItem.create!(order: order6_pending_delivery, item: latte_sogood)
OrderItem.create!(order: order7_pending_delivery, item: frappucino_sogood)
OrderItem.create!(order: order7_pending_delivery, item: frappucino_sogood)
OrderItem.create!(order: order8_pending_delivery, item: expresso_classcroute)
OrderItem.create!(order: order8_pending_delivery, item: expresso_classcroute)
OrderItem.create!(order: order8_pending_delivery, item: theglace_classcroute)
OrderItem.create!(order: order8_pending_delivery, item: theglace_classcroute)
