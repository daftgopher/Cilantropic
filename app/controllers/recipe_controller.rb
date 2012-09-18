class RecipeController < ApplicationController
	def show
		@recipe = Recipe.find(params[:id])

		respond_to do |format|
			format.html # index.html.erb
			format.json { render json: @recipe }
		end
	end
end
