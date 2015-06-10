# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Item.delete_all
Item.create(name: 'St Patty\'s shirt 2015', price: 25, description: "they're green!")
Item.create(name: 'austin', price: 1, description: "super guini")