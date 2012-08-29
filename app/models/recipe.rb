class Recipe < ActiveRecord::Base
  attr_accessible :name, :content
  belongs_to :cookbook
  has_many :ingredients
end
