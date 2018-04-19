class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(name: 'A')
  end

  def create
  end

  private

  def recipe_params
    params.require(:recipe).permit(
      :name,
      recipe_attributes: [
        :name,
        :quantity
      ]
      )
  end
end
