class CookBook
  attr_reader :recipes

  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def highest_calorie_meal
    @recipes.max do |recipe|
      recipe.total_calories
    end
  end
end
