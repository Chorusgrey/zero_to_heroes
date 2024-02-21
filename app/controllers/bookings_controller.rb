class BookingsController < ApplicationController
  def index
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = current_user.bookings_as_tenant.new(booking_params)
    @booking.hero_id = params[:hero_id]

    if @booking.save
      redirect_to dashboard_path(current_user), notice: "Booking was successfully created"
    else
      render hero_path(params[:hero_id]), status: :unprocessable_entity, alert: "Booking was not created"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :hero_id, :user_id)
  end
end
