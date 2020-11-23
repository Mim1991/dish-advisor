class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :cuisine
      t.string :address
      t.string :website
      t.string :phone_number
      t.string :diet

      t.timestamps
    end
  end
end
