# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


mountain_3 = Mountain.create!(name: 'Aspen Hill 1', handicap_accessible: true)
mountain_3.trails.create!(name: 'supergauge', trail_open: true)
mountain_3.trails.create!(name: 'yikes', trail_open: true)