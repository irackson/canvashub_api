class Image < ApplicationRecord
  belongs_to :drawing
  validates :reds, presence: true
  validates :greens, presence: true
  validates :blues, presence: true
  validates :alphas, presence: true
end
