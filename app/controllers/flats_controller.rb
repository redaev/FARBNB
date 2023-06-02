class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
    @booking = Booking.new
  end

  def research
    @flats = Flat.where(planet: params[:planet], number_of_guests: params[:number_of_guests])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def flat_params
  end
end
