require 'faker'

puts 'Destroying old database...'
Booking.destroy_all
Island.destroy_all
User.destroy_all
Transport.destroy_all

puts "Generating admin user"

cook = User.new(first_name: "Captain",
            last_name: "Cook",
            email: "ccook@islandhunt.com",
            username: "blimey",
            remote_photo_url: "https://cdn.pixabay.com/photo/2016/03/22/16/09/sailboat-1273168_960_720.jpg",
            password: "123456",
            admin: true)
cook.save!

puts "Finished generating admin"

puts "Generating 3 users"

kidd = User.new(first_name: "William",
                last_name: "Kidd",
                email: "kidd@islandhunt.com",
                username: "Captain Kidd",
                remote_photo_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/William_Kidd.jpg/800px-William_Kidd.jpg",
                password: "123456")
kidd.save!

ching = User.new(first_name: "Ching",
                last_name: "Shih",
                email: "piratequeen@islandhunt.com",
                username: "queen of the seas",
                remote_photo_url: "https://allthatsinteresting.com/wordpress/wp-content/uploads/2016/11/ching-shih-lede.jpg",
                password: "123456")
ching.save!

jack = User.new(first_name: "Jack",
                last_name: "Sparrow",
                email: "blackpearl@islandhunt.com",
                username: "caribbean mate",
                remote_photo_url: "https://cdn.pixabay.com/photo/2016/03/31/20/57/captain-1296107_960_720.png",
                password: "123456")
jack.save!

puts "Finished generating users"

puts "Generating 8 islands"

difficulty_level = %w[Easy Medium Hard]

island = Island.new(name: "San Blas Island",
                    location: "Montuosa, Panama",
                    activities: "The San Blas island offers the ultimate survival experience! With this trip you and your team will have to build your own base, fish your own food and even open a few coconuts! The weather is perfect all year long, night and day. And don't worry, there are no (unintentional) snakes! Don't wait anymore and come have the experience of a lifetime.",
                    size: "10",
                    price: 1350,
                    difficulty: difficulty_level.sample,
                    remote_photo_url: "http://res.cloudinary.com/dn4gmiobc/image/upload/v1561478460/hxao2lnffnlia5i6nwu5.jpg",
                    user: jack)
island.save!

island = Island.new(name: "Bikini Atoll",
                    location: "Marshall islands",
                    activities: "Welcome to the infamous Bikini Atoll! First things first, you can forget about all the stories you've heard of this island, we can guarantee the air quality is perfect....for the most part. This island will have you screaming and jumping from obstacle to obstacle. Visit us and land sail on this historic island.",
                    size: "6",
                    price: 3999,
                    difficulty: difficulty_level.sample,
                    remote_photo_url: "https://cdn.pixabay.com/photo/2016/08/17/01/39/mystery-1599527_960_720.jpg",
                    user: jack)
island.save!

island = Island.new(name: "Alice's Wonderland",
                    location: "Easter island",
                    activities: "Come experience Alice's Wonderland. Here at Alice's Wonderland we promise to offer you an experience like no other. You will jump through hoops (literally) of fire, you will need to rely on each others quick thinking, oh and we hope you aren't scared of a little height. So come on and jump through the rabbit hole!",
                    size: "160",
                    price: 2000,
                    difficulty: difficulty_level.sample,
                    remote_photo_url: "https://cdn.pixabay.com/photo/2016/06/24/12/40/chile-1477188_960_720.jpg",
                    user: cook)
island.save!

island = Island.new(name: "Mysterious Island",
                    location: "Tristan da Cunha",
                    activities: "The most remote island on earth, feel the distance. This vast marshland island will test your cognitive and physical abilities. It's a marathon as well as a sprint, and you better be ready to think on your feet! Disclosure - you WILL get wet.",
                    size: "200",
                    price: 5500,
                    difficulty: difficulty_level.sample,
                    remote_photo_url: "https://cdn.pixabay.com/photo/2017/03/21/09/18/island-2161617_960_720.jpg",
                    user: ching)
island.save!

island = Island.new(name: "Snow Flake",
                    location: "Powell island",
                    activities: "The only tundra covered island you can land on and have some....freezing fun..? From your first step on land to your last, you will not have many moments of rest. Be prepared to spend some time on your butt, but even more capturing the white magic all around you.",
                    size: "15",
                    price: 9999,
                    difficulty: difficulty_level.sample,
                    remote_photo_url: "https://cdn.pixabay.com/photo/2018/03/22/00/05/water-3248815_960_720.jpg",
                    user: cook)
island.save!

island = Island.new(name: "Fire Island",
                    location: "Moorea Island",
                    activities: "If you enjoy hot weather and you are ready to play with fire.. then this island is for you!.",
                    size: "20",
                    price: 5382,
                    difficulty: difficulty_level.sample,
                    remote_photo_url: "https://wallpaperstock.net/wallpapers/thumbs1/40822.jpg",
                    user: ching)
island.save!

island = Island.new(name: "Mauricio Island",
                    location: "Mauricio",
                    activities: "Don't be fooled by the name.. Mauricio will make your hunt diffucult.",
                    size: "20",
                    price: 3894,
                    difficulty: difficulty_level.sample,
                    remote_photo_url: "https://cdn.shopify.com/s/files/1/1858/2313/files/ISLAND-min.jpg?v=1518713762",
                    user: jack)
island.save!

island = Island.new(name: "Vanuavatu",
                    location: "Vanuavatu",
                    activities: "Here you will find a series of diffucult challenges where you will need to use logic and outside of the box thinking.",
                    size: "5",
                    price: 6723,
                    difficulty: difficulty_level.sample,
                    remote_photo_url: "https://droningearth.files.wordpress.com/2011/02/black.jpg",
                    user: jack)
island.save!

puts "Finished generating islands"

CATEGOTY = ['Airplane', 'Helicopter', 'Boat', 'Submarine']

puts "Generating 4 Transports"
Transport.create!(category: "Airplane",
                  description: "Very nice Airplane with Wifi",
                  price: rand(1000..5000),
                  remote_photo_url: 'https://www.offland.com/wp-content/uploads/2018/03/web10-1000x500.jpg',
                  name: 'Cessna Citation Excel')

Transport.create!(category: 'Helicopter',
                  description: 'black helicopter with emergency floatation gear, cargo swing and dual controls from 2018.',
                  price: rand(1000..5000),
                  remote_photo_url: 'https://www.virginexperiencedays.co.uk/content/img/product/large/PHET15-SP1.jpg',
                  name: 'Airbus H125e')

Transport.create!(category: 'Boat',
                  description: 'Yate!',
                  price: rand(1000..5000),
                  remote_photo_url: 'https://ep01.epimg.net/cultura/imagenes/2019/06/14/actualidad/1560497141_605326_1560705087_noticia_normal.jpg',
                  name: 'Picasso')

Transport.create!(category: 'Submarine',
                  description: 'Yellow, Yellow, Submarine',
                  price: rand(1000..5000),
                  remote_photo_url: 'http://www.coralworld.com/yellow-sub/04.jpg',
                  name: 'Lucy')

# Transport.create!(category: ,
#                   description: ,
#                   price: ,
#                   remote_photo_url: ,
#                   name: )

# Transport.create!(category: ,
#                   description: ,
#                   price: ,
#                   remote_photo_url: ,
#                   name: )


puts "Finished generating Transports"


puts "Done seeding!"
