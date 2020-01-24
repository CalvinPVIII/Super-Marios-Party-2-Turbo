require 'rails_helper'

describe "the edit a review process" do
  it "edits an existing review" do
    visit 'signup'
    fill_in 'Email', :with => 'TestUser'
    check 'Admin'
    fill_in 'Password', :with => '1'
    fill_in 'Password confirmation', :with => '1'
    click_on 'Sign Up'
    visit new_product_path
    fill_in 'Name', :with => 'Chaffles'
    fill_in 'Cost', :with => '3'
    select 'China', from: "product_country"
    click_on 'Create Product'
    click_on 'Chaffles'
    click_on 'Add Review'
    fill_in 'Content', :with => 'Aenean maximus feugiat libero, eget fringilla ex mattis a. Vestibulum sed purus sit amet urna elementum gravida. Phasellus ipsum '
    fill_in 'Rating', :with => '3'
    fill_in 'Author', :with => 'Bruce Wayne'
    click_on 'Create Review'
    click_on '3 stars by Bruce Wayne'
    click_on 'Edit Review'
    click_on 'Delete'
    expect(page).to have_content "Review successfully destroyed"
  end

  end
