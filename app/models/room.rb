class Room < ApplicationRecord
  belongs_to :user
  with_options presence: true do
    validates :room_name
    validates :key,  uniqueness: true, length: { minimum: 8 }, format: { with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i }
  end
end
