class SetRestaurantOwnerAttributeToDefaultFalse < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :restaurant_owner, :boolean, :default => false
  end
end
