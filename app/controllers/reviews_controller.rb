class ReviewsController < ApplicationController
  before_action :find_review, only: [:show, :edit, :update, :delete]

  def index
    @reviews = Review.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    @review.save
    redirect_to restaurant_path(@restaurant)
  end

  def edit
  end

  def update
  end



  def delete
  end

  private 

  def find_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
