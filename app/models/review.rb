class Review < ApplicationRecord
  validates :rating, presence: true, numericality: { greater_than: 0 , less_than_or_equal_to: 5}
  belongs_to :product
end
