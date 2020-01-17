class Product < ApplicationRecord
  has_many :reviews
  scope :made_in_usa, -> {where(country: 'The United States')}
  before_save :capitalize
  validates :name,:cost,:country, presence: true
  scope :most_reviewed, -> {where(id: Product.review_most_product_ids.keys[0])}
  def self.most_recent_three
    Product.last(3)
  end
  def capitalize
    self.name = self.name.titleize()
  end
  def self.review_most_product_ids
    Review.group(:product_id).order('count_id DESC').limit(1).count(:id)
  end
end
