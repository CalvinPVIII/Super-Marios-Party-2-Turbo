class Product < ApplicationRecord
  has_many :reviews
  scope :made_in_usa, -> {where(country: 'The United States')}
  before_save :capitalize
  validates :name,:cost,:country, presence: true

  def self.most_recent_three
    Product.last(3)
  end
  def capitalize
    self.name = self.name.titleize()
  end
end
