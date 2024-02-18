class HerosController < ApplicationController
  before_action :set_hero, only: [:show]
  skip_before_action :authenticate_user!

  def index
    @heros = params[:search_by_address] != '' ? Hero.where("name LIKE '%#{params[:search_by_address]}%'") : @heros = Hero.all
  end

  def show
  end

  def new
  end

  def create
  end

  def search
    query = params[:search][:query]
    @heros = Hero.where("name ILIKE ?", "%#{query}%")
    render :index
  end

  private

  def hero_params
    params.require(:hero).permit(:name, :description, :address, :available, :price_per_day, photos: [])
  end

  def set_hero
    @hero = Hero.find(params[:id])
  end
end
