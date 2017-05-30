class AddCityStateCountryToRestaurant < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :city, :string
    add_column :restaurants, :state, :string
    add_column :restaurants, :country, :string
  end
end
