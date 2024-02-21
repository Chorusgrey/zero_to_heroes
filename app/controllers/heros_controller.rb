class HerosController < ApplicationController
  before_action :set_hero, only: [:show, :destroy]
  skip_before_action :authenticate_user!

  def index
    @heros = params[:search_by_address] != '' ? Hero.where("address LIKE '%#{params[:search_by_address]}%'") : @heros = Hero.all
  end

  def show
    @booking = Booking.new
    @array_hero = Hero.where(id: @hero.id)
    @markers = @array_hero.geocoded.map do |hero|
      {
        lat: hero.latitude,
        lng: hero.longitude
      }
    end
  end

  def new
    @hero = Hero.new
  end

  def create
    @hero = Hero.new(hero_params)
    @hero.user = current_user
    if @hero.save
    redirect_to hero_path(@hero)
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
