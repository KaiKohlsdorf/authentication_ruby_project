Product.destroy_all
Review.destroy_all

50.times do |index|
  Product.create!(name: Faker::Tea.variety, cost: Faker::Number.decimal(l_digits: 2), country_of_origin: Faker::Address.country_name_to_code)
end
  
250.times do |index|
  Review.create!(author: Faker::Name.name, content_body: Faker::Hipster.paragraph_by_chars(characters: 200, supplemental:false), rating: 1+rand(5), product_id: 1+rand(50))
end 

p "Created #{Product.count} products"
p "Created #{Review.count} reviews"
