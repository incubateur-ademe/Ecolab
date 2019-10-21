class FruitlegsController < ApplicationController
before_action :set_fruitleg, only: [:show, :edit, :update]

  def new
    @fruitleg = Fruitleg.new
  end

  def create
  end

  def index
    @fruitlegs = Fruitleg.all
  end

  private

private

  def set_fruitleg
   @fruit = Fruitleg.find(params[:id])
  end

  def fruitlegs_params
    params.require(:fruitleg).permit(:label, :category, :month)
  end
end
