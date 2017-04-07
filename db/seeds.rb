Ingredient.destroy_all

15.times do
  ingredients = Ingredient.new(
    name: Faker::Food.ingredient,
  )
  ingredients.save!
end
