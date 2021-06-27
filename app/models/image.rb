class Image < ApplicationRecord
  belongs_to :drawing
  validates :bytes, presence: true
end
