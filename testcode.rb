require_relative 'cookbook'

mex_cuisine = Cookbook.new("Mexican Cooking")

burrito = Recipe.new("Bean Burrito", ["tortilla", "bean"], ["heat beans", "place beans in tortilla", "roll up"])
pie = Recipe.new("Yum Pie", ["flour", "water"], ["mix", "heat", "done"])

# puts mex_cuisine.title
# puts burrito.title # Bean Burrito
# p burrito.ingredients # ["tortilla", "bean", "cheese"]
# p burrito.steps # ["heat beans", "heat tortilla", "place beans in tortilla", "sprinkle cheese on top", "roll up"]

mex_cuisine.title = "Mexican Recipes"
puts mex_cuisine.title # Mexican Recipesi

burrito.title = "Veggie Burrito"
burrito.ingredients = ["tortilla", "tomatoes"]
burrito.steps = ["heat tomatoes", "place tomatoes in tortilla", "roll up"]

# p burrito.title # "Veggie Burrito"
# p burrito.ingredients # ["tortilla", "tomatoes"]
# p burrito.steps # ["heat tomatoes", "place tomatoes in tortilla", "roll up"]

# mex_cuisine.recipes # []
mex_cuisine.add_recipe(burrito)
mex_cuisine.add_recipe(pie)
p mex_cuisine.recipes # [#<Recipe:0x007fbc3b92e560 @title="Veggie Burrito", @ingredients=["tortilla", "tomatoes"], @steps=["heat tomatoes", "place tomatoes in tortilla", "roll up"]>]



mex_cuisine.recipe_titles # Veggie Burrito
mex_cuisine.recipe_ingredients # These are the ingredients for Veggie Burrito: ["tortilla", "bean"]

mex_cuisine.print_cookbook

