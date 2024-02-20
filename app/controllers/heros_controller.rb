class HerosController < ApplicationController
  before_action :set_hero, only: [:show, :destroy]
  skip_before_action :authenticate_user!

  def index
    @heros = params[:search_by_address] != '' ? Hero.where("address LIKE '%#{params[:search_by_address]}%'") : @heros = Hero.all
  end

  def show
    @hero = Hero.find(params[:id])
    @booking = Booking.new
  end

  def new
    @hero = Hero.new()
  end

  def create
    @hero = Hero.new(hero_params)
    #penser à changer la ligne 19 par : @heroe.user = current_user (device)
    @hero.user_id = 1
    if @hero.save
    redirect_to heros_path(@hero)
    else
    render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @hero.destroy
    redirect_to heros_path, status: :see_other
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
