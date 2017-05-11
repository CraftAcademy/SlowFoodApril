class AddCityStateCountryLatitudeLongitudeToRestaurant < ActiveRecord::Migration[5.0]
  def up
    add_column :restaurants, :city, :string
    add_column :restaurants, :state, :string
    add_column :restaurants, :country, :string
    add_column :restaurants, :latitude, :float
    add_column :restaurants, :longitude, :float
  end
end
