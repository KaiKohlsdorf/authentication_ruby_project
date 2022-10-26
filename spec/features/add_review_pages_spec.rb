require 'rails_helper'

describe "the add a review process" do
  it "adds a review" do
    @product = Product.create({name: "Tea", cost: 4.50, country_of_origin: "US"})
    visit product_path(@product)
    click_button 'Add review to product'
    fill_in 'Author', :with => 'Neil Gaiman'
    fill_in 'Content body', :with => "I am a brilliant author and I am writing a brilliant review. See?"
    fill_in 'Rating', :with => 5
    click_button 'Create Review'
    expect(page).to have_content "I am a brilliant author and I am writing a brilliant review. See?"
  end

  it "gives an error when no name, content, or rating are entered" do
    @product = Product.create({name: "Tea", cost: 4.50, country_of_origin: "US"})
    visit product_path(@product)
    click_button 'Add review to product'
    click_button 'Create Review'
    expect(page).to have_content 'Please enter a name, a review, and a rating.'
  end

  it "gives an error a rating is not a number 1-5" do
    @product = Product.create({name: "Tea", cost: 4.50, country_of_origin: "US"})
    visit product_path(@product)
    click_button 'Add review to product'
    fill_in 'Author', :with => 'Neil Gaiman'
    fill_in 'Content body', :with => "I am a brilliant author and I am writing a brilliant review. See?"
    fill_in 'Rating', :with => 6
    click_button 'Create Review'
    expect(page).to have_content 'Rating must be between 1 and 5'
  end

  it "gives an error if the body content is less than 50 characters or more than 250" do
    @product = Product.create({name: "Tea", cost: 4.50, country_of_origin: "US"})
    visit product_path(@product)
    click_button 'Add review to product'
    fill_in 'Author', :with => 'Neil Gaiman'
    fill_in 'Content body', :with => "This is not my real review."
    fill_in 'Rating', :with => 5
    click_button 'Create Review'
    expect(page).to have_content 'Review content is either too short or too long. The minimum is 50 characters and the maximum is 250.'
  end
end