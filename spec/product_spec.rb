require 'rails_helper'

describe Product, type: :model do
  it { should have_many :reviews }
  it { should validate_presence_of :name }
  it { should validate_presence_of :cost }
  it { should validate_presence_of :country }
  it ("capitalize name")do
    product = Product.create({name:"aeasd asdas", cost: 3, country: "United States"})
    expect(product.name()).to(eq("Aeasd Asdas"))
  end
end
