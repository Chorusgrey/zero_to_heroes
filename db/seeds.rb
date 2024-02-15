puts "Destroying all heroes..."
puts "Destroying all users..."
Heroe.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?

puts "Creating users..."

User.create!(email: "charlie.b@gmail.com", password: "123456", first_name: "Charlie", last_name: "B")
User.create!(email: "gwendal.l@gmail.con", password: "123456", first_name: "Gwendal", last_name: "L")
User.create!(email: "benoit.a@gmail.com", password: "123456", first_name: "Benoit", last_name: "A")
User.create!(email: "dreni.s@gmail.com", password: "123456", first_name: "Dreni", last_name: "S")
User.create!(email: "perrine.d@gmail.com", password: "123456", first_name: "Perrine", last_name: "D")
User.create!(email: "karim.b@gmail.com", password: "123456", first_name: "Karim", last_name: "B")
User.create!(email: "coraline.b@gmail.com", password: "123456", first_name: "Coraline", last_name: "B")

puts "Users created!"

puts "Creating heroes..."

Heroe.create!(name: "Superman", description: "Je suis un super pilote pour le covoiturage", address: "Paris", available: true, price_per_day: 100, user_id: 1)
Heroe.create!(name: "Batman", description: "Super hôte pour un weekend de Luxe", address: "Nice", available: true, price_per_day: 200, user_id: 1)
Heroe.create!(name: "Wonder Woman", description: "Super coach pour la remise en forme et la fonte du gras du ventre", address: "Paris", available: true, price_per_day: 150, user_id: 2)
Heroe.create!(name: "Flash Gordon", description: "Livraison de tous vos colis en un temps record", address: "Lyon", available: true, price_per_day: 220, user_id: 2)
Heroe.create!(name: "Aquaman", description: "Je suis un super guide pour la plongée sous-marine", address: "Marseille", available: true, price_per_day: 180, user_id: 3)
Heroe.create!(name: "Green Lantern", description: "Je suis un super guide pour les randonnées en montagne", address: "Chamonix", available: true, price_per_day: 250, user_id: 3)
Heroe.create!(name: "Cyborg", description: "Je suis un super guide pour les cours d'informatique", address: "Lyon", available: true, price_per_day: 150, user_id: 3)
Heroe.create!(name: "Hawkeye", description: "Je suis un super prof de Tir a l'arc", address: "Paris", available: true, price_per_day: 250, user_id: 3)
Heroe.create!(name: "Black Widow", description: "Je suis un super prof pour les cours de self-defense", address: "Paris", available: true, price_per_day: 150, user_id: 4)
Heroe.create!(name: "Spiderman", description: "Je suis un super guide pour les cours d'escalade", address: "Paris", available: true, price_per_day: 200, user_id: 4)
Heroe.create!(name: "Iron man", description: "Je suis un super garagiste", address: "Marseille", available: true, price_per_day: 500, user_id: 4)
Heroe.create!(name: "Thor", description: "Je suis un super bricoleur, je manie super bien le marteau", address: "Lyon", available: true, price_per_day: 250, user_id: 5)
Heroe.create!(name: "Captain America", description: "Je suis un super guide pour les cours de musculation", address: "Paris", available: true, price_per_day: 150, user_id: 5)
Heroe.create!(name: "Hulk", description: "Je suis un super guide pour les cours de Yoga", address: "Paris", available: true, price_per_day: 150, user_id: 5)
Heroe.create!(name: "Black Panther", description: "Je suis un super guide pour les cours de danse", address: "Paris", available: true, price_per_day: 150, user_id: 6)
Heroe.create!(name: "Doctor Strange", description: "Je suis un super guide pour les cours de magie", address: "Paris", available: true, price_per_day: 150, user_id: 6)
Heroe.create!(name: "Ant Man", description: "Je suis un super guide pour les cours de miniaturisation", address: "Paris", available: true, price_per_day: 150, user_id: 6)
Heroe.create!(name: "Wolverine", description: "Je suis un super guide pour les cours de survie en foret", address: "Chamonix", available: true, price_per_day: 150, user_id: 7)
Heroe.create!(name: "Cyclops", description: "Je suis un super guide pour les cours de tir au laser", address: "Paris", available: true, price_per_day: 150, user_id: 7)

puts "Heroes created!"
