class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
    @booking = Booking.new
    @review = Review.new
    @reviews = @flat.reviews
  end

  def research
    @flats = Flat.where(planet: params[:planet], number_of_guests: params[:number_of_guests])
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.owner_id = current_user.id
    if @flat.save
      redirect_to flats_path(@flat)
    else
      render :new
    end
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :planet, :description, :price, :number_of_guests)
  end
end
