class ReviewsController < ApplicationController

  def index
    @product = Product.find(params[:product_id])
    @reviews = Review.all
    :index
  end

  def new
    @product = Product.find(params[:product_id])
    @review = Review.new
    :new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to root_path
    else
      render :new

  end

  def edit
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
    render :edit
  end

  def show
  @product = Product.find(params[:product_id])
  @review = Review.find(params[:id])
  render :show
  end

  def update
    @review = Review.find(params[:id])
      if @review.update(review_params)
        redirect_to product_path
      else
        render :edit
      end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to root_path
  end


  private
  def review_params
    params.require(:review).permit(:author, :rating, :content)
  end
end
