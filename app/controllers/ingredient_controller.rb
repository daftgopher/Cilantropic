class IngredientController < ApplicationController
	def index
    @ingredients = Ingredient.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ingredients }
    end
  end
end
