class RemoveDietFromRestaurants < ActiveRecord::Migration[6.0]
  def change
    remove_column :restaurants, :diet, :string
  end
end
