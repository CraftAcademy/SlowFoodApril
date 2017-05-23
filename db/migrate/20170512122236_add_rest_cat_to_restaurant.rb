class AddRestCatToRestaurant < ActiveRecord::Migration[5.0]
  def change
    add_reference :restaurants, :rest_category, foreign_key: true
  end
end
