class AddWaitingToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :waiting_room_key, :integer, default: ""
  end
end
