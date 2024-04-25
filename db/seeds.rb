# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Création des villes
paris = City.create(city_name: 'Paris')
lyon = City.create(city_name: 'Lyon')

# Création des dogsitters
alice = Dogsitter.create(name: 'Alice', city: paris)
bob = Dogsitter.create(name: 'Bob', city: lyon)

# Création des chiens
rex = Dog.create(name: 'Rex', breed: 'Labrador', city: paris)
buddy = Dog.create(name: 'Buddy', breed: 'Beagle', city: lyon)

# Création des promenades
stroll1 = Stroll.create(datetime: DateTime.now + 1.day, dogsitter: alice)
stroll2 = Stroll.create(datetime: DateTime.now + 2.days, dogsitter: bob)

# Association des chiens aux promenades
StrollDog.create(stroll: stroll1, dog: rex)
StrollDog.create(stroll: stroll2, dog: buddy)

puts "Seeds loaded successfully!"
