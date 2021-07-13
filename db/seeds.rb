# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Restaurant.create(name: "La Parolaquia", address: Faker::Address.street_name, phone_number: 47997497, category: "Italian")
Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.street_name, phone_number: 47997497, category: "Japanese")
Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.street_name, phone_number: 47997497, category: "French")
Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.street_name, phone_number: 47997497, category: "Italian")
Restaurant.create(name: Faker::Restaurant.name, address: Faker::Address.street_name, phone_number: 47997497, category: "Chinese")