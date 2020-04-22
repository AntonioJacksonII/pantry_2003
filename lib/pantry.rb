class Pantry
  attr_reader :stock

  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(ingredient)
    @stock[ingredient]
  end

  def restock(ingredient, quantity)
    @stock[ingredient] += quantity
  end

  def enough_ingredients_for?(recipe)
    enough = []
    recipe.ingredients_required.each do |ingredient, quantity|
      enough << (quantity <= stock_check(ingredient))
    end
    !enough.include?(false)
  end
end
