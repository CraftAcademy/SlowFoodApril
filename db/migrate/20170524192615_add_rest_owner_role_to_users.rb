class AddRestOwnerRoleToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :restaurant_owner, :boolean
  end
end
