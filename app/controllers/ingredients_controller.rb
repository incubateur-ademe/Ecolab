class IngredientsController < ApplicationController
before_action :set_ingredient, only: [:show]

  def index
    ingredients = Ingredient.all.order(created_at: :desc)
    if params[:query].present?
      sql_query = "ingredients.name ILIKE :query OR ingredients.category ILIKE :query OR ingredients.description ILIKE :query"
      @ingredients = ingredients.where(sql_query, query: "%#{params[:query]}%")
    else
      @ingredients = Ingredient.all
    end
  end

  def show
  end

private

  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end
end
