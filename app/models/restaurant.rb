class Restaurant < ApplicationRecord
  belongs_to :rest_category
  belongs_to :user

  validates_presence_of :name,
                        :address,
                        :city,
                        :province,
                        :country

  geocoded_by :full_address, latitude: :latitude, longitude: :longitude
  after_validation  :geocode, if:  :address_city_province_country_present? || :address_city_province_country_changed?

  def full_address
    [address, city, province, country].compact.join(', ')
  end

  def address_city_province_country_changed?
    address_changed? || city_changed? || province_changed? || country_changed?
  end

  def address_city_province_country_present?
    address.present? && city.present? && province.present? && country.present?
  end
end
