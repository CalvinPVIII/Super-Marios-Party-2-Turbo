class CreateReviewsAndProductsTables < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :cost
      t.string :country
    end
    create_table :reviews do |t|
      t.string :author
      t.integer :rating
      t.string :content
      t.integer :product_id
    end
  end
end
