require 'date'

class CookBook
  attr_reader :recipes, :date

  def initialize
    @recipes = []
    @date = Date.today.strftime("%m-%d-%Y")
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def highest_calorie_meal
    @recipes.max do |recipe|
      recipe.total_calories
    end
  end

  def summary
    summary = []
    recipies_summary = {}
    @recipes.each do |recipe|
      # sorted_ingredients = recipe.ingredients_required.sort_by { |ingredient, quantity| ingredient.calories * quantity}.reverse
      recipies_summary[:name] = recipe.name
      # recipies[:details] = {:ingredients =>
      #   recipe.ingredients_required.each do |ingredient, quantity|
      #   {:ingredient => ingredient.name,
      #     :amount => "#{quantity} #{ingredient.unit}"}
      end
      summary << recipies_summary
      summary
  end
end
