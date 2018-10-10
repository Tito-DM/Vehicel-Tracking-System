class CreateVehicels < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicels do |t|
      t.string :First_name
      t.string :surname
      t.string :vehicel_brand
      t.string :vehicel_model
      t.string :vehicel_color
      t.string :plate_number
      t.integer :user_id

      t.timestamps
    end
  end
end
