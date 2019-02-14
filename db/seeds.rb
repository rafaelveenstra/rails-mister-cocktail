# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require_relative 'Ingredient'
require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
response = open(url).read
var1 = JSON.parse(response)
var1drinks = var1['drinks']

var1drinks.each do |hash|
  name = hash['strIngredient1']
  Ingredient.create(name: name)
end

# 15.times do
#   Cocktail.create(name: Faker::Food.fruits)
# end
