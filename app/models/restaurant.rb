class Restaurant < ApplicationRecord
  belongs_to :rest_category
    
  validates_presence_of :name, presence: true
  validates_presence_of :address, presence: true
  validates_presence_of :city, presence: true
  validates_presence_of :state, presence: true
  validates_presence_of :country, presence: true

  geocoded_by :full_address, latitude: :latitude, longitude: :longitude
  after_validation  :geocode, if:  :address_city_state_country_present? || :address_city_state_country_changed?

  def full_address
    [address, city, state, country].compact.join(', ')
  end

  def address_city_state_country_changed?
    address_changed? || city_changed? || state_changed? || country_changed?
  end

  def address_city_state_country_present?
    address.present? || city.present? || state.present? || country.present?
  end

end
