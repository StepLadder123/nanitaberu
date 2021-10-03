class Room < ApplicationRecord
  belongs_to :user
  has_many :menus
  has_many :schedules
  with_options presence: true do
    validates :room_name
    validates :key,  uniqueness: true, length: { minimum: 8 }, format: { with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i }
  end
end
