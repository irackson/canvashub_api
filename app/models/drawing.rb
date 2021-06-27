class Drawing < ApplicationRecord
  has_many :images
  validates :height, presence: true
  validates :width, presence: true
end
