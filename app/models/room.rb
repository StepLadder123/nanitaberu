class Room < ApplicationRecord
  with_options presence: true do
    validates :room_name
    validates :key,  uniqueness: true, length: { minimum: 8 }
  end
end
