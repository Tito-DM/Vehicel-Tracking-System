class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :latitude
      t.string :longitude
      t.integer :user_id
      t.integer :vehicel_id

      t.timestamps
    end
  end
end
