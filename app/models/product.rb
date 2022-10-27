class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy

  scope :usa_made, -> { where(country_of_origin: "US")}

  scope :three_most_recent, -> { order(created_at: :desc).limit(3)}

  scope :most_reviews, -> {(
    select("products.id, products.name, products.cost, products.country_of_origin, count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group("products.id")
    .order("reviews_count DESC")
    .limit(5)
    )}

  validates :name, presence: true
  # validates_format_of :cost, :with => /^\d+\.?\d{0,2}$/, multiline: true 
  validates :cost, presence: true
  validates :country_of_origin, presence: true

  before_save(:titleize_product)

  private
    def titleize_product
      self.name = self.name.titleize
    end
end