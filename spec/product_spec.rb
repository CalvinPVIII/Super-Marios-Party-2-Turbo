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
  it ("returns products from the United States")do
    product = Product.create({name:"aeasd asdas", cost: 3, country: "The United States"})
    expect(Product.made_in_usa).to(eq([product]))
  end
  it ("returns 3 most recent products")do
    product = Product.create({name:"aeasd asdas", cost: 3, country: "The United States"})
    product2 = Product.create({name:"ketchup", cost: 3, country: "The United States"})
    product3 = Product.create({name:"mushroom", cost: 3, country: "The United States"})
    product4 = Product.create({name:"salad", cost: 3, country: "The United States"})
    expect(Product.most_recent_three).to(eq([product2, product3, product4]))
  end
  it ("returns most reviewed product")do
    product = Product.create({name:"aeasd asdas", cost: 3, country: "The United States"})
    review = Review.create({author:"ketchup", rating: 3, content: "The United States of America something something 50 characters at least I think this should be enough", product_id: product.id})
    expect(Product.most_reviewed[0]).to(eq(product))
  end
end
