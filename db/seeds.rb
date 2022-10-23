Product.destroy_all
Review.destroy_all

50.times do |index|
  Product.create!(name: Faker::Tea.variety), 
  
5.times.do |index|
  products = Product.all
  products.each do |product|
    Review.create!(author: Faker::Friends.character,
      content_body: Faker::Hipster.paragraph_by_chars(characters: 200, supplemental:false))
      rating: 

p "Created #{Product.count} products"
p "Created #{Review.count} reviews"

# in progress