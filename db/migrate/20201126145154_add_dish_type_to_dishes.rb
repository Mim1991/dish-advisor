class AddDishTypeToDishes < ActiveRecord::Migration[6.0]
  def change
    add_column :dishes, :dish_type, :string
  end
end
