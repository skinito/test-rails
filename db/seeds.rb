# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


20.times do |n|
  prenom = Faker::Name.first_name
  nom = Faker::Name.name
  email = "example-#{n+1}@exemple.org"
  password = "password"
  User.create!(first_name: prenom,
               last_name: nom,
               email: email,
               password:              password,
               password_confirmation: password)
end
