class HeroesController < ApplicationController
  before_action :set_heroe, only: [:show]
  skip_before_action :authenticate_user!

  def index
    @heroes = Heroe.all
  end

  def show
  end

  def new
  end

  def create
  end

  private

  def heroe_params
    params.require(:heroe).permit(:name, :description, :address, :available, :price_per_day, :photo)
  end

  def set_heroe
    @heroe = Heroe.find(params[:id])
  end
end
