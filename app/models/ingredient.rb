class Ingredient < ActiveRecord::Base
  attr_accessible :name, :amount, :image
  has_many :recipe_ingredients
  has_many :recipes, :through => :recipe_ingredients 
end
