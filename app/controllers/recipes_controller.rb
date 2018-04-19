class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(ingredient: 'ingr_A')
    @recipe.ingredients.build(ingredient: 'ingr_B')
  end

  def create
  end
end
