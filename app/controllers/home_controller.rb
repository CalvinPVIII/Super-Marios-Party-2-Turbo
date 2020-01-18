class HomeController < ApplicationController
  def index
    @products = Product.most_recent_three
    @usa_products = Product.all.limit(7)
    @popular = Product.most_reviewed
    :index
  end
end
