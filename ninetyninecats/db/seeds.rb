# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cat.destroy_all
Cat.create!(name: 'Ronan',sex: 'M', color: 'black', birth_date: '2011-03-08')
Cat.create!(name: 'Cece',sex: 'F', color: 'white', birth_date: '2009-02-10')
Cat.create!(name: 'Tom',sex: 'M', color: 'orange', birth_date: '2016-01-06')
