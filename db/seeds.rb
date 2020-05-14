# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

Cocktail.destroy_all

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
html_file = open(url).read
ingredient = JSON.parse(html_file)
ingredient['drinks'].each do |object|
  Ingredient.create(name: object['strIngredient1'])
  end
puts "read api"


Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Cocktail.create(name: "Vodka Soda")
Cocktail.create(name: "Martini")
Cocktail.create(name: "Moscow Mule")
puts "finished"


