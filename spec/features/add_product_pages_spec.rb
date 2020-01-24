require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
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
    expect(page).to have_content 'Product successfully created'
    expect(page).to have_content 'Chaffles'
  end

  it "gives an error when no name is entered" do
    visit signup_path
    fill_in 'Email', :with => 'TestUser'
    check 'Admin'
    fill_in 'Password', :with => '1'
    fill_in 'Password confirmation', :with => '1'
    click_on 'Sign Up'
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content "Product unable to be created"
  end
end
