class ReviewsController < ApplicationController
  def create
    @review = Review.new(reviews_params)
    @review.cocktail = Cocktail.find(params[:cocktail_id])
    if @review.save
      redirect_to cocktail_path(@review.cocktail)
    else
      render 'cocktails/show', locals: { id: @review.cocktail.id }
    end
  end

  private
  def reviews_params
    params.require(:review).permit(:comment, :rating)
  end
end
