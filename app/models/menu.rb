class Menu < ApplicationRecord
  belongs_to :room
  has_one_attached :image

  validates :image, presence: true
  validates :cook_name, presence: true
end
