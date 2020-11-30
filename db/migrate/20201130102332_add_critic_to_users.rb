class AddCriticToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :critic, :boolean, default: false
  end
end
