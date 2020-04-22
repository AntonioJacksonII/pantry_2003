require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/pantry'

class PantryTest < Minitest::Test

  def setup
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    # @ingredient2 = Ingredient.new("Macaroni", "oz", 200)
    @pantry = Pantry.new
  end

  def test_it_exists
    assert_instance_of Pantry, @pantry
  end

  def test_it_has_attributes
    assert_equal ({}), @pantry.stock
  end
end