class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.date    :date,    presence: true
      t.integer :menu_id, presence: true
      t.timestamps
    end
  end
end
