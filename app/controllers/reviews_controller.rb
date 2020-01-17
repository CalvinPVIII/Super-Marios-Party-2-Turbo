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
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    if @review.save
      flash[:notice] = "Review successfully added"
      redirect_to product_path(@product)
    else
      flash[:alert] = "Review was unable to be added"
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
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
      if @review.update(review_params)
        flash[:notice] = "Review successfully updated"
        redirect_to product_review_path(@product, @review)
      else
        flash[:alert] = "Review was unable to be updated"
        render :edit
      end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    flash[:notice] = "Review successfully destroyed"
    redirect_to root_path
  end
end

  private
  def review_params
    params.require(:review).permit(:author, :rating, :content)
  end
end
