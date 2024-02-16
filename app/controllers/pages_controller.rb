class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @heroes = Heroe.all
  end
end
