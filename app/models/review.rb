class Review < ApplicationRecord
  belongs_to :user
  belongs_to :movie

  validates :stars, presence: true, numericality: true, inclusion: { in: 1..5 }
  validates :content, length: { maximum: 200, too_long: "200 characters is the maximum length for a review."}
end
