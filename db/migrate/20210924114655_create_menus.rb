class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.integer    :cook_name, null: false, uniqueness: true
      t.text       :memo
      t.references :room,      null: false, foreign_key: true
      t.timestamps
    end
  end
end
