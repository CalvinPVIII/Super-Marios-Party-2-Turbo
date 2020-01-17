class HomeController < ApplicationController
  def index
    @products = Product.most_recent_three
    :index
  end
end
