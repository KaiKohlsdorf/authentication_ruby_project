require 'rails_helper'

describe Product do
  it { should have_many(:reviews) } 
  it { should validate_presence_of :name }
  it { should validate_presence_of :cost }
  it { should validate_presence_of :country_of_origin }

  it("titleizes the name of a product") do    
    product = Product.create({name: "tea", cost: 4.50, country_of_origin: "US"})
    expect(product.name()).to(eq("Tea"))
  end


  # it("ensure that cost has two decimal places") do
  #   product = Product.create({name: "tea", cost: 4, country_of_origin: "US"})
  #   expect(product.cost).to(eq(4.00))
  # end
end

