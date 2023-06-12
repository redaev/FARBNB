class ReviewsController < ApplicationController
  before_action :set_flat, only: %i[new create]

  def index
    @reviews = Review.all
  end

  def average_rating
    @review = reviews.average(:rating).round(1)
  end

  def new
    @flat = Flat.find(params[:flat_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.flat = @flat
    if @review.save
      redirect_to flat_path(@flat)
    else
      render partial: 'new', status: :unprocessable_entity
    end
  end

  private

  def set_flat
    @flat = Flat.find(params[:flat_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
