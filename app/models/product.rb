class Product < ApplicationRecord
  has_many :reviews
  scope :made_in_usa, -> {where(country: 'United States')}

  def self.most_recent_three
    Product.last(3)
  end
end
