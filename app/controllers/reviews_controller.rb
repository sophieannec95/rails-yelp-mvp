class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to review_path(@review)
    else
      render "new"
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end


  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
