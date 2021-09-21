class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :room_name, null: false
      t.string :key,       null: false, uniqueness: true
      t.text   :rule
      t.timestamps
    end
  end
end
