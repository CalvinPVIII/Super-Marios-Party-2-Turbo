require 'rails_helper'

describe "the delete a product process" do
  it "deletes an exiisting product" do
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
    click_on 'Delete'
    expect(page).to have_content 'Product successfully deleted'
  end

end
