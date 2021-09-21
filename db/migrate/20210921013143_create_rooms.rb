class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string  :room_name, null: false
      t.string  :key,       null: false, uniqueness: true
      t.text    :rule
      t.integer :member1
      t.integer :member2
      t.integer :member3
      t.integer :member4
      t.integer :member5
      t.integer :member6
      t.integer :member7
      t.integer :member8
      t.integer :member9
      t.references :user,     null: false, foreign_key: true
      t.timestamps
    end
  end
end
