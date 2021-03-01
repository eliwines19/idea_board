class CreateBoards < ActiveRecord::Migration[6.0]
  def change
    create_table :boards do |t|
      t.string :title
      t.integer :lanscaping_id
      t.integer :hardscaping_id
      t.integer :custom_pool_id
      t.integer :artisan_masonry_id
      t.integer :carpentry_id
      t.integer :outdoor_lighting_id
      t.integer :outdoor_kitchen_id
      t.integer :outdoor_fireplace_id
      t.integer :water_feature_id
      t.integer :fire_pit_id

      t.references :user

      t.timestamps
    end
  end
end
