class RecipesController < ApplicationController
    def index
        recipes = Recipe.all
        render json: recipes
    end

    def create
        recipe = Recipe.create!(recipe_params)
        render json: recipe, status: :created
    end

    private

    def recipe_params
        params.permit(:name, :ingredients, :people_served, :country, :user_id)
    end

    def render_not_found_response
        render json: { error: "Recipe not found" }, status: :not_found
      end

      def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
      end
end
