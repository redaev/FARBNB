class BookingsController < ApplicationController
  before_action :set_booking, only: [:approve, :reject]

  def new
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new
  end

  def create
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.flat = @flat
    @booking.save
    redirect_to flat_confirmation_path
  end

  def confirmation
  end

  def dashboard
    @bookings_as_tenant = current_user.bookings.includes(:flat)
    @bookings_as_owner = Booking.includes(:flat).where(flats: { owner: current_user })
  end


  def approve
    if @booking.flat.owner == current_user
      @booking.update(status: 'approved')
    else
      flash[:alert] = "You don't have permission to do that"
    end
    redirect_to flat_dashboard_path
  end

  def reject
    if @booking.flat.owner == current_user
      @booking.update(status: 'rejected')
    else
      flash[:alert] = "You don't have permission to do that"
    end
    redirect_to flat_dashboard_path
  end



  private

  def booking_params
    params.require(:booking).permit(:arrival_date, :departure_date, :status)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
