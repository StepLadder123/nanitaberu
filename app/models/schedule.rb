class Schedule < ApplicationRecord
  belongs_to :room
  with_options presence: true do
    validates :date
    validates :menu_id
    validates :room_id
  end
end
