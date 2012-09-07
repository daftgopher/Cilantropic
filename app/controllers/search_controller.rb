class SearchController < ApplicationController
	def search
		#raise params.inspect
		@ingredients = Ingredient.all
		@selected_ingredient_ids = params[:ingredient_ids]
		@all_recipes = Recipe.all
	end
end
