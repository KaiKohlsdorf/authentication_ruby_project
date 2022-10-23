class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy

  scope :usa_made, -> { where(country_of_origin: "USA")}

  scope :three_most_recent, -> { order(created_at: :desc).limit(3)}

  scope :most_reviews, -> {(
    select("products.id, products.name, products.cost, products.country_of_origin, count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group("products.id")
    .order("reviews_count DESC")
    .limit(5)
    )}

  validates :name, :cost, :country_of_origin, presence: true
end