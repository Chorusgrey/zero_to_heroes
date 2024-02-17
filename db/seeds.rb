require "open-uri"

puts "Destroying all heroes..."
puts "Destroying all users..."
User.destroy_all if Rails.env.development?
Heroe.destroy_all if Rails.env.development?

puts "------------------------------------------------------------------------------------------------------"
puts "------------------------------------------------------------------------------------------------------"
puts "Creating users..."
puts "------------------------------------------------------------------------------------------------------"
puts "------------------------------------------------------------------------------------------------------"

charlie = User.create!(email: "charlie.b@gmail.com", password: "123456", first_name: "Charlie", last_name: "B")
gwendal = User.create!(email: "gwendal.l@gmail.con", password: "123456", first_name: "Gwendal", last_name: "L")
benoit = User.create!(email: "benoit.a@gmail.com", password: "123456", first_name: "Benoit", last_name: "A")
dreni = User.create!(email: "dreni.s@gmail.com", password: "123456", first_name: "Dreni", last_name: "S")
perrine = User.create!(email: "perrine.d@gmail.com", password: "123456", first_name: "Perrine", last_name: "D")
karim = User.create!(email: "karim.b@gmail.com", password: "123456", first_name: "Karim", last_name: "B")
coraline = User.create!(email: "coraline.b@gmail.com", password: "123456", first_name: "Coraline", last_name: "B")

puts "------------------------------------------------------------------------------------------------------"
puts "------------------------------------------------------------------------------------------------------"
puts "#{User.count} Users created!"
puts "------------------------------------------------------------------------------------------------------"
puts "-----------------------------------------------------------------------------------------------------"

puts "------------------------------------------------------------------------------------------------------"
puts "------------------------------------------------------------------------------------------------------"
puts "Creating heroes..."
puts "------------------------------------------------------------------------------------------------------"
puts "------------------------------------------------------------------------------------------------------"

superman = Heroe.create!(name: "Superman", description: "Je suis un super pilote pour le covoiturage", address: "Paris", available: true, price_per_day: 100, user: charlie)
batman = Heroe.create!(name: "Batman", description: "Super hôte pour un weekend de Luxe", address: "Nice", available: true, price_per_day: 200, user: charlie)
wonder_woman = Heroe.create!(name: "Wonder Woman", description: "Super coach pour la remise en forme et la fonte du gras du ventre", address: "Paris", available: true, price_per_day: 150, user: gwendal)
flash_gordon = Heroe.create!(name: "Flash Gordon", description: "Livraison de tous vos colis en un temps record", address: "Lyon", available: true, price_per_day: 220, user: gwendal)
aquaman = Heroe.create!(name: "Aquaman", description: "Je suis un super guide pour la plongée sous-marine", address: "Marseille", available: true, price_per_day: 180, user: benoit)
green_lantern = Heroe.create!(name: "Green Lantern", description: "Je suis un super guide pour les randonnées en montagne", address: "Chamonix", available: true, price_per_day: 250, user: benoit)
cyborg = Heroe.create!(name: "Cyborg", description: "Je suis un super guide pour les cours d'informatique", address: "Lyon", available: true, price_per_day: 150, user: benoit)
hawkeye = Heroe.create!(name: "Hawkeye", description: "Je suis un super prof de Tir a l'arc", address: "Paris", available: true, price_per_day: 250, user: benoit)
black_widow = Heroe.create!(name: "Black Widow", description: "Je suis un super prof pour les cours de self-defense", address: "Paris", available: true, price_per_day: 150, user: dreni)
spiderman = Heroe.create!(name: "Spiderman", description: "Je suis un super guide pour les cours d'escalade", address: "Paris", available: true, price_per_day: 200, user: dreni)
iron_man = Heroe.create!(name: "Iron man", description: "Je suis un super garagiste", address: "Marseille", available: true, price_per_day: 500, user: dreni)
thor = Heroe.create!(name: "Thor", description: "Je suis un super bricoleur, je manie super bien le marteau", address: "Lyon", available: true, price_per_day: 250, user: perrine)
captain_america = Heroe.create!(name: "Captain America", description: "Je suis un super guide pour les cours de musculation", address: "Paris", available: true, price_per_day: 150, user: perrine)
hulk = Heroe.create!(name: "Hulk", description: "Je suis un super guide pour les cours de Yoga", address: "Paris", available: true, price_per_day: 150, user: perrine)
black_panther = Heroe.create!(name: "Black Panther", description: "Je suis un super guide pour les cours de danse", address: "Paris", available: true, price_per_day: 150, user: karim)
doctor_strange = Heroe.create!(name: "Doctor Strange", description: "Je suis un super guide pour les cours de magie", address: "Paris", available: true, price_per_day: 150, user: karim)
ant_man = Heroe.create!(name: "Ant Man", description: "Je suis un super guide pour les cours de miniaturisation", address: "Paris", available: true, price_per_day: 150, user: karim)
wolverine = Heroe.create!(name: "Wolverine", description: "Je suis un super guide pour les cours de survie en foret", address: "Chamonix", available: true, price_per_day: 150, user: coraline)
cyclops = Heroe.create!(name: "Cyclops", description: "Je suis un super guide pour les cours de tir au laser", address: "Paris", available: true, price_per_day: 150, user: coraline)

puts "------------------------------------------------------------------------------------------------------"
puts "------------------------------------------------------------------------------------------------------"
puts "#{Heroe.count} Heroes created!"
puts "------------------------------------------------------------------------------------------------------"
puts "------------------------------------------------------------------------------------------------------"


puts "------------------------------------------------------------------------------------------------------"
puts "------------------------------------------------------------------------------------------------------"
puts "Attach photo to users"
puts "------------------------------------------------------------------------------------------------------"
puts "------------------------------------------------------------------------------------------------------"

file_user = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708107897/spider%20man.jpg")

charlie.photo.attach(io: file_user, filename: "charlie.png", content_type: "image/jpg")
charlie.save

file_user = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708107897/spider%20man.jpg")
gwendal.photo.attach(io: file_user, filename: "gwendal.png", content_type: "image/jpg")
gwendal.save

file_user = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708107897/spider%20man.jpg")
benoit.photo.attach(io: file_user, filename: "benoit.png", content_type: "image/jpg")
benoit.save

file_user = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708107897/spider%20man.jpg")
dreni.photo.attach(io: file_user, filename: "nes.png", content_type: "image/png")
dreni.save

file_user = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708107897/spider%20man.jpg")
perrine.photo.attach(io: file_user, filename: "nes.png", content_type: "image/png")
perrine.save

file_user = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708107897/spider%20man.jpg")
karim.photo.attach(io: file_user, filename: "nes.png", content_type: "image/png")
karim.save

file_user = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708107897/spider%20man.jpg")
coraline.photo.attach(io: file_user, filename: "nes.png", content_type: "image/png")
coraline.save

puts "------------------------------------------------------------------------------------------------------"
puts "------------------------------------------------------------------------------------------------------"
puts "User's photo done !"
puts "------------------------------------------------------------------------------------------------------"
puts "------------------------------------------------------------------------------------------------------"

puts "------------------------------------------------------------------------------------------------------"
puts "------------------------------------------------------------------------------------------------------"
puts "Attach photo to hero"
puts "------------------------------------------------------------------------------------------------------"
puts "------------------------------------------------------------------------------------------------------"

file_superman = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708101159/superman.jpg")
superman.photos.attach(io: file_superman, filename: "nes.png", content_type: "image/png")
superman.save

file_batman = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708102313/batman.jpg")
batman.photos.attach(io: file_batman, filename: "nes.png", content_type: "image/png")
batman.save

file_wonderwoman = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708103386/wonder%20woman.jpg")
wonder_woman.photos.attach(io: file_wonderwoman, filename: "nes.png", content_type: "image/png")
wonder_woman.save

file_flashgordon = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708103534/flash.jpg")
flash_gordon.photos.attach(io: file_flashgordon, filename: "nes.png", content_type: "image/png")
flash_gordon.save

file_aquaman = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708103594/aquaman.png")
aquaman.photos.attach(io: file_aquaman, filename: "nes.png", content_type: "image/png")
aquaman.save

file_greenlantern = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708103962/green%20lantern.jpg")
green_lantern.photos.attach(io: file_greenlantern, filename: "nes.png", content_type: "image/png")
green_lantern.save

file_cyborg = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708165516/cyborg.jpg")
cyborg.photos.attach(io: file_cyborg, filename: "nes.png", content_type: "image/png")
cyborg.save

file_hawkeye = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708104058/hawkeye.jpg")
hawkeye.photos.attach(io: file_hawkeye, filename: "nes.png", content_type: "image/png")
hawkeye.save

file_blackwidow = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708104114/black%20widow.jpg")
black_widow.photos.attach(io: file_blackwidow, filename: "nes.png", content_type: "image/png")
black_widow.save

file_spiderman = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708107897/spider%20man.jpg")
spiderman.photos.attach(io: file_spiderman, filename: "nes.png", content_type: "image/png")
spiderman.save

file_ironman = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708166174/ironman.jpg")
iron_man.photos.attach(io: file_ironman, filename: "nes.png", content_type: "image/png")
iron_man.save

file_thor = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708104515/thor.jpg")
thor.photos.attach(io: file_thor, filename: "nes.png", content_type: "image/png")
thor.save

file_captain_america = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708104564/captain%20america.jpg")
captain_america.photos.attach(io: file_captain_america, filename: "nes.png", content_type: "image/png")
captain_america.save

file_hulk = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708104616/hulk.jpg")
hulk.photos.attach(io: file_hulk, filename: "nes.png", content_type: "image/png")
hulk.save

file_black_panther = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708104658/black%20panther.jpg")
black_panther.photos.attach(io: file_black_panther, filename: "nes.png", content_type: "image/png")
black_panther.save

file_doctor_strange = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708104748/doctor%20strange.jpg")
doctor_strange.photos.attach(io: file_doctor_strange, filename: "nes.png", content_type: "image/png")
doctor_strange.save

file_ant_man = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708104791/ant%20man.jpg")
ant_man.photos.attach(io: file_ant_man, filename: "nes.png", content_type: "image/png")
ant_man.save

file_wolverine = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708104951/wolverine.jpg")
wolverine.photos.attach(io: file_wolverine, filename: "nes.png", content_type: "image/png")
wolverine.save

file_cyclops = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708107533/cyclops.jpg")
cyclops.photos.attach(io: file_cyclops, filename: "nes.png", content_type: "image/png")
cyclops.save

puts "------------------------------------------------------------------------------------------------------"
puts "------------------------------------------------------------------------------------------------------"
puts "Hero's photo done !"
puts "------------------------------------------------------------------------------------------------------"
puts "------------------------------------------------------------------------------------------------------"
