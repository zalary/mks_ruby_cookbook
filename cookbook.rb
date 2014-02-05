class Cookbook
  attr_accessor :title  # attr_accessor virtually creates def title=(new_title) so they may be accessed outside the class ie in Pry.
                                              #             @title = new_title
                                              #           end
  def initialize(title)
    @title = title
    @recipes = []
  end

  def recipes
    @recipes
  end

  def add_recipe(recipe) # adds recipe class instance (with all its methods ie .title, .ingredients, .steps) to (cookbook) class variable @recipes
    @recipes << recipe
    puts "Added a recipe to the collection: #{recipe.title}"
  end

  def recipe_titles
    @recipes.each { |recipe| puts recipe.title }
  end

  def recipe_ingredients
    @recipes.each { |recipe| puts "These are the ingredients for the #{recipe.title}:  #{recipe.ingredients}" }
  end

  # def print_cookbook
  #   @recipes.each do |recipe|
  #     puts "Recipe tite: #{recipe.title}"
  #     puts "Ingredients list: #{recipe.ingredients.join(", ")}"
  #     puts "Preparation steps: #{recipe.steps.join(", ")}"
  #   end
  # end

  def print_cookbook # Forrest's code
    @recipes.each do |x|
    p "To make a #{x.title}, get #{x.ingredients.join(' and ')} and do this:"#
      i=1
      x.steps.each do |y|
        puts "#{i.to_s}. #{y}"
        i+=1
      end
    end
  end


end

class Recipe

  attr_accessor :title, :ingredients, :steps

  def initialize(title, ingredients, steps)
    @title = title
    @ingredients = ingredients
    @steps = steps
  end

  def print_recipe
    puts "Recipe info for #{@title}: Ingredients: #{@ingredients.join(", ")}.  Steps: #{@steps.join(", ")}"
  end

end

