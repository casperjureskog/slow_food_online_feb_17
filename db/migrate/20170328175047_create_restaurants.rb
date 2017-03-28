class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :street
      t.integer :zip_code
      t.string :city
      t.string :food_style

      t.timestamps
    end
  end
end
