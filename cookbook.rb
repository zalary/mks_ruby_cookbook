class Cookbook
  attr_accessor :title
  def initialize(title)
    @title = title
    @recipes = []
  end

  def recipes
    @recipes
  end

  def add_recipe(recipe_title)
    @recipes << recipe_title
    puts "Added a recipe to the collection: #{recipe_title.title}"
  end

 end

class Recipe
  attr_accessor :title, :ingredients, :steps
  def initialize(title, ingredients, steps)
    @title = title
    @ingredients = ingredients
    @steps = steps
  end
end
