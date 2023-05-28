class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name, null:false
      t.string :overview, null:false
      t.datetime :start_time, null:false
      t.integer :prefecture_status, default: 0, null: false
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
