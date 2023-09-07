class PublicRecipesController < ApplicationController
    def index
        @public_recipes = Recipe.includes(:recipe_foods, :users).where(public: true).order(created_at: :desc)
    end
end