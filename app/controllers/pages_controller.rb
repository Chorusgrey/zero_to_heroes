class PagesController < ApplicationController
  skip_before_action :authenticate_user!, except: [:index]

  def home
  end
end
