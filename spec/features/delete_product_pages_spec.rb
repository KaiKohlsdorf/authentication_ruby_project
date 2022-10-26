require 'rails_helper'

describe "the delete a product process" do
  it "deletes a product" do
    @product = Product.create({name: "Tea", cost: 5.45, country_of_origin: "US"})
    visit product_path(@product)
    click_button 'Delete product'
    expect(page).to have_content 'Products'
  end
end