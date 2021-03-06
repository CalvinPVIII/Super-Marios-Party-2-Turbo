require 'rails_helper'

describe "the add a review process" do
  it "adds a new review" do
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
    expect(page).to have_content "3 stars by Bruce Wayne"
    expect(page).to have_content "Review successfully added"
  end

  it "gives an error when no name is entered" do
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
    click_on 'Create Review'
    expect(page).to have_content "Review was unable to be added"
  end
end
