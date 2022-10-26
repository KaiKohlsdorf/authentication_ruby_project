require 'rails_helper'

describe "the update a product process" do
  it "updates a product" do
    @product = Product.create({name: "Tea", cost: 10.99, country_of_origin: "US"})
    visit product_path(@product)
    click_button 'Edit product'
    fill_in 'Name', :with => 'Coffee'
    fill_in 'Cost', :with => 10.99
    fill_in 'Country of origin', :with => 'US'
    click_on 'Update Product'
    expect(page).to have_content 'Coffee'
  end
end