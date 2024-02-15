puts "Destroying all heroes..."
Heroe.destroy_all

puts "Creating heroes..."

Heroe.create!(name: "Superman", description: "Je suis un super pilote pour le covoiturage", address: "Paris", available: true, price_per_day: 100, user_id: 1)
Heroe.create!(name: "Batman", description: "Super hôte pour un weekend de Luxe", address: "Nice", available: true, price_per_day: 200, user_id: 1)
Heroe.create!(name: "Wonder Woman", description: "Super coach pour la remise en forme et la fonte du gras du ventre", address: "Paris", available: true, price_per_day: 150, user_id: 1)

puts "Heroes created!"
