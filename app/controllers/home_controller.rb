class HomeController < ApplicationController
  def index
    @products = Product.most_recent_three
    @usa_products = Product.made_in_usa.limit(7)
    @popular = Product.most_reviewed
    :index
  end
end
