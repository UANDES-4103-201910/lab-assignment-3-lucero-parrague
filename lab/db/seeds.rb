# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create([{name:"Vicente", last_name:"Lucero", email:"vjlucero@miuandes.cl", phone:"+56988186470", password:"1234567890", address:"Robinson Crusoe 1247"},
                     {name:"Ignacio", last_name:"Parrague", email:"ignapa@miuandes.cl", phone:"+5692545787", password:"0987654321", address:"San Carlos"},
                     {name:"Juan", last_name:"Perez", email:"hperez@miuandes.cl", phone:"+56983956627", password:"1234567890", address:"Crusoe Robinson 1111"},
                      {name:"Diego", last_name:"Pereira", email:"dpereira@miuandes.cl", phone:"+56935324786", password:"1234567890", address:"San Crusoe 4124"},
                      {name:"Pedro", last_name:"Perero", email:"pperero@miuandes.cl", phone:"+5691263656", password:"1234567890", address:"Robinson Carlos 5163"},
                      {name:"Ayuwoki", last_name:"HeHe", email:"ElAyuwoki@miuandes.cl", phone:"+5696660666", password:"1234567890", address:"Robinson Robinson 8765"}])

venues = Venue.create([{name:"estadio1" , address:"address1" , capacity:25 },
                       {name:"estadio2" , address:"address2" , capacity:27 },
                       {name:"estadio3" , address:"address3" , capacity:28 },
                       {name:"estadio4" , address:"address4" , capacity:32 },
                       {name:"estadio5" , address:"address5" , capacity:36 }])

events = Event.create([{venue:venues[0], name:"LeEvente",start_date:Date.parse("2019-05-26"),end_date:Date.parse("2019-05-26")},
                       {venue:venues[1], name:"El eventa",start_date:Date.parse("2019-06-28"),end_date:Date.parse("2019-06-29")},
                       {venue:venues[2], name:"San robinson band",start_date:Date.parse("2019-07-14"),end_date:Date.parse("2019-08-17")},
                       {venue:venues[3], name:"Concierto del ayuwoki",start_date:Date.parse("2019-08-25"),end_date:Date.parse("2019-08-27")},
                       {venue:venues[4], name:"El benja hace como vaca",start_date:Date.parse("2019-09-24"),end_date:Date.parse("2019-09-25")}])


tickets = Ticket.create([{event:events[0], price:100, category:"discucion"},
                         {event:events[1], price:200, category:"discucion"},
                         {event:events[2], price:3000, category:"musica"},
                         {event:events[3], price:9999999, category:"musica"},
                         {event:events[4], price:20, category:"arte abstracto"}])

orders = Order.create([{user:users[0], ticket:tickets[0], total_amount:100},
                       {user:users[1], ticket:tickets[1], total_amount:200},
                       {user:users[2], ticket:tickets[2], total_amount:3000},
                       {user:users[3], ticket:tickets[3], total_amount:9999999},
                       {user:users[4], ticket:tickets[4], total_amount:20}])