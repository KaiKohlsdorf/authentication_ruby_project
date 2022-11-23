require 'rails_helper'

describe "the update a product process" do
  before :each do
    visit root_path
    click_link 'Sign-Up'
    fill_in 'user_email', with: 'useremail@aol.com'
    fill_in 'user_password', with: 'password'
    fill_in 'user_password_confirmation', with: 'password'
    click_button 'Sign up'
    @user = User.last
    @user.update(admin: true)
    visit product_path(@product)
    click_button 'Edit product'    
    fill_in 'Name', :with => 'Coffee'
    fill_in 'Cost', :with => 10.99
    fill_in 'Country of origin', :with => 'US'
    click_on 'Update Product'
    expect(page).to have_content 'Coffee'
  end

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