class ChangeStateToProvinceInRestaurant < ActiveRecord::Migration[5.0]
  def change
    rename_column :restaurants, :state, :province
  end
end
