class Restaurant < ApplicationRecord
  belongs_to :rest_category
  belongs_to :user

  validates_presence_of :name,
                        :address,
                        :city,
                        :state,
                        :country

  geocoded_by :full_address, latitude: :latitude, longitude: :longitude
  after_validation  :geocode, if:  :address_city_state_country_present? || :address_city_state_country_changed?

  def full_address
    [address, city, state, country].compact.join(', ')
  end

  def address_city_state_country_changed?
    address_changed? || city_changed? || state_changed? || country_changed?
  end

  def address_city_state_country_present?
    address.present? && city.present? && state.present? && country.present?
  end
end
