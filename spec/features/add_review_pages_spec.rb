require 'rails_helper'

describe "the add a review process" do
  it "adds a new review" do
    visit new_product_path
    fill_in 'Name', :with => 'Chaffles'
    fill_in 'Cost', :with => '3'
    select 'China', from: "product_country"
    click_on 'Create Product'
    click_on 'Chaffles'
    click_on 'Add Review'
    fill_in 'Content', :with => 'Aenean maximus feugiat libero, eget fringilla ex mattis a. Vestibulum sed purus sit amet urna elementum gravida. Phasellus ipsum enim, lobortis a commodo id, dapibus nec sapien. Fusce euismod ultricies libero. Cras at egestas neque, at mollis tellus. Sed imperdiet dolor in orci pulvinar finibus. Fusce urna metus, ornare non varius la'
    fill_in 'Rating', :with => '3'
    fill_in 'Author', :with => 'Bruce Wayne'
  end

  it "gives an error when no name is entered" do
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
