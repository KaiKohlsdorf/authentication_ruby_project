require 'rails_helper'

describe "the add a product process" do
  # before :each do
  #   visit root_path
  #   click_link 'Sign-Up'
  #   fill_in 'user_email', with: 'useremail@aol.com'
  #   fill_in 'user_password', with: 'password'
  #   fill_in 'user_password_confirmation', with: 'password'
  #   click_button 'Sign up'
  #   @user = User.last
  #   @user.update(admin: true)
  #   visit new_product_path
  #   visit products_path
  #   click_link 'Create new product'    
  #   fill_in 'Name', :with => 'Green Tea'
  #   fill_in 'Cost', :with => '4.25'
  #   fill_in 'Country of origin', :with => 'US'
  #   click_on 'Create Product'
  # end

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
    user = User.create!(:email => 'kai@aol.com', :password => 'password', :admin => 'true')
    login_as(user, :scope => :user)
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content "Name can't be blank"
  end
end