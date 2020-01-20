class ProductsController < ApplicationController

  def index
    @products = Product.all
    :index
  end

  def new
    @product = Product.new
    :new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product successfully created"
      redirect_to root_path
    else
      flash[:alert] = "Product unable to be created"
      render :new

  end

  def edit
    @product = Product.find(params[:id])
    render :edit
  end

  def show
  @product = Product.find(params[:id])
  render :show
  end

  def update
    @product= Product.find(params[:id])
      if @product.update(product_params)
        flash[:notice] = "Product successfully updated"
        redirect_to product_path
      else
        flash[:alert] = "Product unable to be updated"
        render :edit
      end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "Product successfully deleted"
    redirect_to root_path
  end
end

  private
  def product_params
    params.require(:product).permit(:name, :cost, :country)
  end
end
