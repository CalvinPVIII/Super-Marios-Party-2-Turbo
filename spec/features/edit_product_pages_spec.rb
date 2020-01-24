require 'rails_helper'

describe "the edit a product process" do
  it "edits an exiisting product" do
    visit 'signup'
    fill_in 'Email', :with => 'TestUser'
    check 'Admin'
    fill_in 'Password', :with => '1'
    fill_in 'Password confirmation', :with => '1'
    click_on 'Sign Up'
    visit products_path
    click_link 'Add a product'
    fill_in 'Name', :with => 'Chaffles'
    fill_in 'Cost', :with => '3'
    select 'The United States', from: "product_country"
    click_on 'Create Product'
    click_on 'All Products'
    click_on 'Chaffles'
    click_on 'Edit Product'
    fill_in 'Name', :with => 'Cheese Egg Waffles'
    click_on 'Update Product'
    expect(page).to have_content 'Product successfully updated'
    expect(page).to have_content 'Cheese Egg Waffles'
  end

  it "gives an error when nothing is entered" do
    visit 'signup'
    fill_in 'Email', :with => 'TestUser'
    check 'Admin'
    fill_in 'Password', :with => '1'
    fill_in 'Password confirmation', :with => '1'
    click_on 'Sign Up'
    visit products_path
    click_link 'Add a product'
    fill_in 'Name', :with => 'Chaffles'
    fill_in 'Cost', :with => '3'
    select 'The United States', from: "product_country"
    click_on 'Create Product'
    click_on 'All Products'
    click_on 'Chaffles'
    click_on 'Edit Product'
    fill_in 'Name', :with => ''
    click_on 'Update Product'
    expect(page).to have_content 'Product unable to be updated'

  end
end
