require "open-uri"

puts "Destroying all heros..."
puts "Destroying all users..."
puts "Destroying all bookings..."

Booking.destroy_all
Hero.destroy_all
User.destroy_all

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

superman = Hero.create!(name: "Superman", description: "Je suis un super pilote pour le covoiturage", address: "Paris", available: true, price_per_day: 100, user: charlie)
wonder_woman = Hero.create!(name: "Wonder Woman", description: "Super coach pour la remise en forme et la fonte du gras du ventre", address: "Paris", available: true, price_per_day: 150, user: gwendal)
flash_gordon = Hero.create!(name: "Flash Gordon", description: "Livraison de tous vos colis en un temps record", address: "Lyon", available: true, price_per_day: 220, user: gwendal)
aquaman = Hero.create!(name: "Aquaman", description: "Je suis un super guide pour la plongée sous-marine", address: "Marseille", available: true, price_per_day: 180, user: benoit)
green_lantern = Hero.create!(name: "Green Lantern", description: "Je suis un super guide pour les randonnées en montagne", address: "Chamonix", available: true, price_per_day: 250, user: benoit)
hawkeye = Hero.create!(name: "Hawkeye", description: "Je suis un super prof de Tir a l'arc", address: "Paris", available: true, price_per_day: 250, user: benoit)
black_widow = Hero.create!(name: "Black Widow", description: "Je suis un super prof pour les cours de self-defense", address: "Paris", available: true, price_per_day: 150, user: dreni)
spiderman = Hero.create!(name: "Spiderman", description: "Je suis un super guide pour les cours d'escalade", address: "Paris", available: true, price_per_day: 200, user: dreni)
iron_man = Hero.create!(name: "Iron man", description: "Je suis un super garagiste.", address: "Marseille", available: true, price_per_day: 500, user: dreni)
thor = Hero.create!(name: "Thor", description: "Je suis un super bricoleur, je manie super bien le marteau", address: "Lyon", available: true, price_per_day: 250, user: perrine)
captain_america = Hero.create!(name: "Captain America", description: "Je suis un super guide pour les cours de musculation", address: "Paris", available: true, price_per_day: 150, user: perrine)
hulk = Hero.create!(name: "Hulk", description: "Je suis un super guide pour les cours de Yoga", address: "Paris", available: true, price_per_day: 150, user: perrine)
black_panther = Hero.create!(name: "Black Panther", description: "Je suis un super guide pour les cours de danse", address: "Paris", available: true, price_per_day: 150, user: karim)
doctor_strange = Hero.create!(name: "Doctor Strange", description: "Je suis un super guide pour les cours de magie", address: "Paris", available: true, price_per_day: 150, user: karim)
ant_man = Hero.create!(name: "Ant Man", description: "Je suis un super guide pour les cours de miniaturisation", address: "Paris", available: true, price_per_day: 150, user: karim)
wolverine = Hero.create!(name: "Wolverine", description: "Je suis un super guide pour les cours de survie en foret", address: "Chamonix", available: true, price_per_day: 150, user: coraline)

puts "------------------------------------------------------------------------------------------------------"
puts "------------------------------------------------------------------------------------------------------"
puts "#{Hero.count} Heroes created!"
puts "------------------------------------------------------------------------------------------------------"
puts "------------------------------------------------------------------------------------------------------"

puts "------------------------------------------------------------------------------------------------------"
puts "------------------------------------------------------------------------------------------------------"
puts "Creating bookings..."
puts "------------------------------------------------------------------------------------------------------"
puts "------------------------------------------------------------------------------------------------------"

Booking.create!(start_date: "2021-10-01", end_date: "2021-10-05", user: gwendal, hero: superman)

puts "------------------------------------------------------------------------------------------------------"
puts "------------------------------------------------------------------------------------------------------"
puts "#{User.count} Bookings created!"
puts "------------------------------------------------------------------------------------------------------"
puts "-----------------------------------------------------------------------------------------------------"

puts "------------------------------------------------------------------------------------------------------"
puts "------------------------------------------------------------------------------------------------------"
puts "Attach photo to users"
puts "------------------------------------------------------------------------------------------------------"
puts "------------------------------------------------------------------------------------------------------"

file_user = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708169346/ss.jpg")

charlie.photo.attach(io: file_user, filename: "charlie.png", content_type: "image/jpg")
charlie.save

file_user = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708169346/ss.jpg")
gwendal.photo.attach(io: file_user, filename: "gwendal.png", content_type: "image/jpg")
gwendal.save

file_user = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708169346/ss.jpg")
benoit.photo.attach(io: file_user, filename: "benoit.png", content_type: "image/jpg")
benoit.save

file_user = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708169346/ss.jpg")
dreni.photo.attach(io: file_user, filename: "nes.png", content_type: "image/png")
dreni.save

file_user = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708169346/ss.jpg")
perrine.photo.attach(io: file_user, filename: "nes.png", content_type: "image/png")
perrine.save

file_user = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708169346/ss.jpg")
karim.photo.attach(io: file_user, filename: "nes.png", content_type: "image/png")
karim.save

file_user = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708169346/ss.jpg")
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

file_superman = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708956813/superman1.jpg")
superman.photos.attach(io: file_superman, filename: "nes.png", content_type: "image/png")
superman.save
file_superman1 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708956812/superman2.jpg")
superman.photos.attach(io: file_superman1, filename: "nes.png", content_type: "image/png")
superman.save
file_superman2 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708956812/superman3.jpg")
superman.photos.attach(io: file_superman2, filename: "nes.png", content_type: "image/png")
superman.save
file_superman3 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708956812/superman4.png")
superman.photos.attach(io: file_superman3, filename: "nes.png", content_type: "image/png")
superman.save

puts "ok1"

file_wonderwoman = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708957155/wonderwoman1.jpg")
wonder_woman.photos.attach(io: file_wonderwoman, filename: "nes.png", content_type: "image/png")
wonder_woman.save
file_wonderwoman1 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708957366/wonderwoman2.jpg")
wonder_woman.photos.attach(io: file_wonderwoman1, filename: "nes.png", content_type: "image/png")
wonder_woman.save
file_wonderwoman2 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708957367/wonderwoman3.jpg")
wonder_woman.photos.attach(io: file_wonderwoman2, filename: "nes.png", content_type: "image/png")
wonder_woman.save
file_wonderwoman3 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708957367/wonderwoman4.jpg")
wonder_woman.photos.attach(io: file_wonderwoman3, filename: "nes.png", content_type: "image/png")
wonder_woman.save

puts "ok2"

file_flashgordon1 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708957532/flash1.jpg")
flash_gordon.photos.attach(io: file_flashgordon1, filename: "nes.png", content_type: "image/png")
flash_gordon.save
file_flashgordon2 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708957666/flash2.png")
flash_gordon.photos.attach(io: file_flashgordon2, filename: "nes.png", content_type: "image/png")
flash_gordon.save
file_flashgordon3 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708957667/flash3.jpg")
flash_gordon.photos.attach(io: file_flashgordon3, filename: "nes.png", content_type: "image/png")
flash_gordon.save
file_flashgordon4 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708957669/flash4.png")
flash_gordon.photos.attach(io: file_flashgordon4, filename: "nes.png", content_type: "image/png")
flash_gordon.save

puts "ok3"

file_aquaman = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708957888/aquaman1.jpg")
aquaman.photos.attach(io: file_aquaman, filename: "nes.png", content_type: "image/png")
aquaman.save
file_aquaman1 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708957889/aquaman2.jpg")
aquaman.photos.attach(io: file_aquaman1, filename: "nes.png", content_type: "image/png")
aquaman.save
file_aquaman2 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708957890/aquaman3.jpg")
aquaman.photos.attach(io: file_aquaman2, filename: "nes.png", content_type: "image/png")
aquaman.save
file_aquaman3 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708957891/aquaman4.jpg")
aquaman.photos.attach(io: file_aquaman3, filename: "nes.png", content_type: "image/png")
aquaman.save

puts "ok4"

file_greenlantern = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708958136/green%20lantern%201.jpg")
green_lantern.photos.attach(io: file_greenlantern, filename: "nes.png", content_type: "image/png")
green_lantern.save
file_greenlantern1 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708958137/green%20lantern%202.jpg")
green_lantern.photos.attach(io: file_greenlantern1, filename: "nes.png", content_type: "image/png")
green_lantern.save
file_greenlantern2 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708958138/greenlantern3.jpg")
green_lantern.photos.attach(io: file_greenlantern2, filename: "nes.png", content_type: "image/png")
green_lantern.save
file_greenlantern3 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708958138/greenlantern4.jpg")
green_lantern.photos.attach(io: file_greenlantern3, filename: "nes.png", content_type: "image/png")
green_lantern.save

puts "ok5"

file_hawkeye = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708958606/hawkeye1.jpg")
hawkeye.photos.attach(io: file_hawkeye, filename: "nes.png", content_type: "image/png")
hawkeye.save
file_hawkeye1 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708958607/hawkeye2.png")
hawkeye.photos.attach(io: file_hawkeye1, filename: "nes.png", content_type: "image/png")
hawkeye.save
file_hawkeye2 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708958608/hawkeye3.jpg")
hawkeye.photos.attach(io: file_hawkeye2, filename: "nes.png", content_type: "image/png")
hawkeye.save
file_hawkeye3 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708958608/hawkeye4.jpg")
hawkeye.photos.attach(io: file_hawkeye3, filename: "nes.png", content_type: "image/png")
hawkeye.save

puts "ok6"

file_blackwidow = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708958896/blackwidow1.jpg")
black_widow.photos.attach(io: file_blackwidow, filename: "nes.png", content_type: "image/png")
black_widow.save
file_blackwidow1 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708958897/blackwidow2.webp")
black_widow.photos.attach(io: file_blackwidow1, filename: "nes.png", content_type: "image/png")
black_widow.save
file_blackwidow2 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708958898/blackwidow3.jpg")
black_widow.photos.attach(io: file_blackwidow2, filename: "nes.png", content_type: "image/png")
black_widow.save
file_blackwidow3 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708958899/blackwidow4.webp")
black_widow.photos.attach(io: file_blackwidow3, filename: "nes.png", content_type: "image/png")
black_widow.save

puts "ok7"

file_spiderman = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708959211/spiderman1.jpg")
spiderman.photos.attach(io: file_spiderman, filename: "nes.png", content_type: "image/png")
spiderman.save
file_spiderman1 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708959223/spiderman2.jpg")
spiderman.photos.attach(io: file_spiderman1, filename: "nes.png", content_type: "image/png")
spiderman.save
file_spiderman2 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708959224/spiderman3.jpg")
spiderman.photos.attach(io: file_spiderman2, filename: "nes.png", content_type: "image/png")
spiderman.save
file_spiderman3 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708959228/spiderman4.png")
spiderman.photos.attach(io: file_spiderman3, filename: "nes.png", content_type: "image/png")
spiderman.save

puts "ok8"

file_ironman = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708960061/ironman1.jpg")
iron_man.photos.attach(io: file_ironman, filename: "nes.png", content_type: "image/png")
iron_man.save
file_ironman1 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708964226/ironman2.png")
iron_man.photos.attach(io: file_ironman1, filename: "nes.png", content_type: "image/png")
iron_man.save
file_ironman2 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708959834/ironman3.jpg")
iron_man.photos.attach(io: file_ironman2, filename: "nes.png", content_type: "image/png")
iron_man.save
file_ironman3 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708959835/ironman4.jpg")
iron_man.photos.attach(io: file_ironman3, filename: "nes.png", content_type: "image/png")
iron_man.save

puts "ok9"


file_thor = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708960199/thor1.jpg")
thor.photos.attach(io: file_thor, filename: "nes.png", content_type: "image/png")
thor.save
file_thor1 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708960199/thor2.jpg")
thor.photos.attach(io: file_thor1, filename: "nes.png", content_type: "image/png")
thor.save
file_thor2 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708960200/thor3.jpg")
thor.photos.attach(io: file_thor2, filename: "nes.png", content_type: "image/png")
thor.save
file_thor3 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708960202/thor4.jpg")
thor.photos.attach(io: file_thor3, filename: "nes.png", content_type: "image/png")
thor.save

puts "ok10"

file_captain_america = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708960424/captainamerica1.jpg")
captain_america.photos.attach(io: file_captain_america, filename: "nes.png", content_type: "image/png")
captain_america.save
file_captain_america1 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708960423/captainamerica2.jpg")
captain_america.photos.attach(io: file_captain_america1, filename: "nes.png", content_type: "image/png")
captain_america.save
file_captain_america2 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708960425/captainamerica3.jpg")
captain_america.photos.attach(io: file_captain_america2, filename: "nes.png", content_type: "image/png")
captain_america.save
file_captain_america3 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708964506/captainamerica4.jpg")
captain_america.photos.attach(io: file_captain_america3, filename: "nes.png", content_type: "image/png")
captain_america.save

puts "ok11"

file_hulk = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708961362/hulk1.webp")
hulk.photos.attach(io: file_hulk, filename: "nes.png", content_type: "image/png")
hulk.save
file_hulk1 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708960660/hulk2.jpg")
hulk.photos.attach(io: file_hulk1, filename: "nes.png", content_type: "image/png")
hulk.save
file_hulk2 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708960661/hulk3.jpg")
hulk.photos.attach(io: file_hulk2, filename: "nes.png", content_type: "image/png")
hulk.save
file_hulk3 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708960663/hulk4.jpg")
hulk.photos.attach(io: file_hulk3, filename: "nes.png", content_type: "image/png")
hulk.save

puts "ok12"

file_black_panther = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708961597/blackpanther1.jpg")
black_panther.photos.attach(io: file_black_panther, filename: "nes.png", content_type: "image/png")
black_panther.save
file_black_panther1 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708961500/blackpanther2.jpg")
black_panther.photos.attach(io: file_black_panther1, filename: "nes.png", content_type: "image/png")
black_panther.save
file_black_panther2 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708961503/blackpanther3.jpg")
black_panther.photos.attach(io: file_black_panther2, filename: "nes.png", content_type: "image/png")
black_panther.save
file_black_panther3 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708961551/blackpanther4.png")
black_panther.photos.attach(io: file_black_panther3, filename: "nes.png", content_type: "image/png")
black_panther.save

puts "ok13"

file_doctor_strange = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708961790/drstrange1.jpg")
doctor_strange.photos.attach(io: file_doctor_strange, filename: "nes.png", content_type: "image/png")
doctor_strange.save
file_doctor_strange1 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708962091/dr%20strange2.jpg")
doctor_strange.photos.attach(io: file_doctor_strange1, filename: "nes.png", content_type: "image/png")
doctor_strange.save
file_doctor_strange2 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708962096/drstrange3.jpg")
doctor_strange.photos.attach(io: file_doctor_strange2, filename: "nes.png", content_type: "image/png")
doctor_strange.save
file_doctor_strange3 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708962099/drstrange4.jpg")
doctor_strange.photos.attach(io: file_doctor_strange3, filename: "nes.png", content_type: "image/png")
doctor_strange.save

puts "ok14"

file_ant_man = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708962253/antman1.jpg")
ant_man.photos.attach(io: file_ant_man, filename: "nes.png", content_type: "image/png")
ant_man.save
file_ant_man1 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708962345/antman2.jpg")
ant_man.photos.attach(io: file_ant_man1, filename: "nes.png", content_type: "image/png")
ant_man.save
file_ant_man2 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708962348/antman3.jpg")
ant_man.photos.attach(io: file_ant_man2, filename: "nes.png", content_type: "image/png")
ant_man.save
file_ant_man3 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708962350/antman4.jpg")
ant_man.photos.attach(io: file_ant_man3, filename: "nes.png", content_type: "image/png")
ant_man.save

puts "ok15"

file_wolverine = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708962746/wolverine1.jpg")
wolverine.photos.attach(io: file_wolverine, filename: "nes.png", content_type: "image/png")
wolverine.save
file_wolverine1 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708962609/wolverine2.jpg")
wolverine.photos.attach(io: file_wolverine1, filename: "nes.png", content_type: "image/png")
wolverine.save
file_wolverine2 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708962611/wolverine3.jpg")
wolverine.photos.attach(io: file_wolverine2, filename: "nes.png", content_type: "image/png")
wolverine.save
file_wolverine3 = URI.open("https://res.cloudinary.com/dintkm0ed/image/upload/v1708962614/wolverine4.jpg")
wolverine.photos.attach(io: file_wolverine3, filename: "nes.png", content_type: "image/png")
wolverine.save



puts "------------------------------------------------------------------------------------------------------"
puts "------------------------------------------------------------------------------------------------------"
puts "Hero's photo done !"
puts "------------------------------------------------------------------------------------------------------"
puts "------------------------------------------------------------------------------------------------------"
