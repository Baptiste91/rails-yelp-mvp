# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = ["chinese", "italian", "japanese", "french", "belgian"]
names = ["Chinatown", "Surpriz", "PNY", "Le Ruisseau", "Mamma Roma"]
address = ["20 rue du plouc, Paris", "5 allée des fleurs, Marseille", "10 rue Aubert, Bordeaux", "Place de la Concorde, Paris", "Avenue des Champs Elysées, Paris"]

5.times do
  restaurant = Restaurant.new(
    name: names.sample,
    address: address.sample,
    category: categories.sample
  )
  restaurant.save!
end
