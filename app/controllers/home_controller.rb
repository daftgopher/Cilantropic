class HomeController < ApplicationController
  def index
  	@ingredients = Ingredient.order(:name)
  end
end
