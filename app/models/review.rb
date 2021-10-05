class Review < ApplicationRecord
  validates :content, presence: true
  validates_inclusion_of :rating, in: 0..5
  validates :rating, numericality: { only_integer: true }

  belongs_to :restaurant

end
