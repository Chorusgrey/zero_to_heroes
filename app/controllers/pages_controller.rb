class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @heros = Hero.all
  end
end
