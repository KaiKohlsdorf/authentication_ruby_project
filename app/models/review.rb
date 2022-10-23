class Review < ApplicationRecord
  belongs_to :product 

  validates :author, presence: true
  validates :content_body, presence: true, length: { within: 50..250 }
  validates :rating, presence: true, numericality: { integer: true, less_than_or_equal_to: 5, greater_than_or_equal_to: 1 }
end