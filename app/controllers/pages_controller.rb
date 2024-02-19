class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @heros = Hero.all
  end

  def dashboard
    @bookings_as_tenant = current_user.bookings_as_tenant
    @bookings_as_owner = current_user.bookings_as_owner
    @heros_for_rent = current_user.heros
  end

end
