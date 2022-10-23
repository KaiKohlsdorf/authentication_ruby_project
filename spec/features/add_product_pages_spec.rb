require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_button'Create new product'
    fill_in 'Name', :with => 'Green Tea'
    fill_in 'Cost', :with => '4.25'
    fill_in 'Country of origin', :with => 'US'
    click_on 'Create Product'
    expect(page).to have_content 'Green Tea'
  end

  it "gives an error when no name is entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content "Name can't be blank"
  end
end