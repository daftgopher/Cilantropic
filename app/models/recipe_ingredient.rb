class RecipeIngredient < ActiveRecord::Base
  attr_accessible :ingredient_id, :recipe_id, :amount
  belongs_to :ingredient
  belongs_to :recipe
  delegate :name, to: :ingredient
end
