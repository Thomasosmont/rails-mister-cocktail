require 'json'
require 'open-uri'
Ingredient.destroy_all
url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
thing_serialized = open(url).read
thing = JSON.parse(thing_serialized)
thing["drinks"].each do |d|
  Ingredient.create(name: d["strIngredient1"])
end
