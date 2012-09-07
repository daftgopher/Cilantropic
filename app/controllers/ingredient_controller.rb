class IngredientController < ApplicationController
	def index
    @ingredients = Ingredient.order(:name)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ingredients }
    end
  end
end
