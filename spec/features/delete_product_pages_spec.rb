require 'rails_helper'

describe "the delete a product process" do
  before :each do
    visit root_path
    click_link 'Sign-Up'
    fill_in 'user_email', with: 'useremail@aol.com'
    fill_in 'user_password', with: 'password'
    fill_in 'user_password_confirmation', with: 'password'
    click_button 'Sign up'
    @user = User.last
    @user.update(admin: true)
    visit products_path(@product)
    click_button 'Delete product'    
    expect(page).to have_content 'Products'
  end


  it "deletes a product" do
    @product = Product.create({name: "Tea", cost: 5.45, country_of_origin: "US"})
    visit product_path(@product)
    click_button 'Delete product'
    expect(page).to have_content 'Products'
  end
end