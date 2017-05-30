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
  delivery_address: '2 avenue des saules, lille',
  password: '123456'
  )

romain =  User.create!(
  first_name:'Romain',
  last_name: ' Despature',
  email:'rdespature @gmail.com',
  phone: '0622222222',
  delivery_address: '165 Avenue de Bretagne, lille',
  password: '123456'
  )

manuel =  User.create!(
  first_name:'Manuel',
  last_name: 'Sabine',
  email:'manuel.sabine@gmail.com',
  phone: '0633333333',
  delivery_address: '2 Allée de la haye du temple, lomme',
  password: '123456'
  )

juliette =  User.create!(
  first_name:'Juliette',
  last_name: 'Scheidecker ',
  email:'juscheidecker@gmail.com',
  phone: '0644444444',
  delivery_address: '124 Avenue de Bretagne, lille',
  password: '123456'
  )

#------SEED de SHOPS-----#
sogood = Shop.create!(
  name:'So Good',
  delivery_address: '163 Avenue de Bretagne, Lille'
  )

classcroute = Shop.create!(
  name:'Class croute',
  delivery_address: '166 Avenue de Bretagne, Lille'
  )

#------SEED d' ITEM-----#
latte_sogood = Item.create!(
  name:'Cafe latte',
  description:'Un mélange de 50% robusta et 50% arabica',
  price: 3.5 ,
  shop: sogood,
  )

capuccino_sogood = Item.create!(
  name:'Capuccino',
  description: "Café italien, servi dans une grande tasse, à base d'un expresso et coiffé de sa mousse de lait",
  price: 4.2 ,
  shop: sogood,
  )

frappucino_sogood = Item.create!(
  name:'Frappucino',
  description: "Summer capuccino",
  price: 4.2 ,
  shop: sogood,
  )

expresso_classcroute = Item.create!(
  name:'Expresso',
  description: "Café court, très corsé avec un arôme puissant",
  price: 2.5 ,
  shop: classcroute,
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
order1_pending_takeaway = Order.create!(
  user: vincent,
  status: false, #pending
  delivery_type: false #take away
  )

order2_pending_delivery = Order.create!(
  user: romain,
  status: false, #pending
  delivery_type: true # delivery
  )

order3_confirmed_takeaway = Order.create!(
  user: manuel,
  status: true, #confirmed
  delivery_type: false #take away
  )

order4_confirmed_delivery = Order.create!(
  user: juliette,
  status: true, #confirmed
  delivery_type: true # delivery
  )

#------SEED de CHILD ORDER-----#
ChildOrder.create!(main_order: order3_confirmed_takeaway, order: order2_pending_delivery)
# ChildOrder.create!(main_order: order3_confirmed_takeaway, order: order4_confirmed_delivery)

#------SEED d' ORDER ITEM-----#
OrderItem.create!(order: order1_pending_takeaway, item: latte_sogood)
OrderItem.create!(order: order1_pending_takeaway, item: capuccino_sogood)
OrderItem.create!(order: order1_confirmed_delivery, item: frappucino_sogood)
OrderItem.create!(order: order2_pending_delivery, item: expresso_classcroute)
OrderItem.create!(order: order2_pending_delivery, item: theglace_classcroute)
OrderItem.create!(order: order2_pending_delivery, item: infusion_classcroute)
OrderItem.create!(order: order3_confirmed_takeaway, item: theglace_classcroute)
OrderItem.create!(order: order4_confirmed_delivery, item: latte_sogood)
OrderItem.create!(order: order4_confirmed_delivery, item: frappucino_sogood)
