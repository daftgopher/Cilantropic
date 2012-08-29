class HomeController < ApplicationController
  def index
  	@ingredients = Ingredient.all
  end
end
