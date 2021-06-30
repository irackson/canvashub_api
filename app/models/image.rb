class Image < ApplicationRecord
  belongs_to :drawing
  validates :data_url, presence: true
  validates :commit_message, presence: true
  validates :commit_author, presence: true
end
