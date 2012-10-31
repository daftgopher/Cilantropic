class Recipe < ActiveRecord::Base
  attr_accessible :name, :content, :image
  belongs_to :cookbook
  has_many :recipe_ingredients
  has_many :ingredients, :through => :recipe_ingredients
end
