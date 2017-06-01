require 'rails_helper'
# require 'geocoder'

RSpec.describe Restaurant, type: :model do
  describe 'DB table Restaurant' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :address }
    it { is_expected.to have_db_column :email }
    it { is_expected.to have_db_column :phone }
    it { is_expected.to have_db_column :city }
    it { is_expected.to have_db_column :state }
    it { is_expected.to have_db_column :country }
    it { is_expected.to have_db_column :latitude }
    it { is_expected.to have_db_column :longitude }
    it { is_expected.to have_db_column :description }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :address }
    it { is_expected.to validate_presence_of :city }
    it { is_expected.to validate_presence_of :state }
    it { is_expected.to validate_presence_of :country }
  end

  describe 'Associations' do
    it { is_expected.to belong_to :rest_category }
    it { is_expected.to belong_to :user}
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(FactoryGirl.create(:restaurant)).to be_valid
    end
  end

  describe 'Geocoder' do
    before do
      Geocoder.configure(lookup: :test)
      Geocoder::Lookup::Test.add_stub(
          'Ostrahamngatan 5', [
          {
              latitude: 57.70931634,
              longitude: 11.9663941,
              address: 'Ostrahamngatan 5',
              state: 'Vastra Gotaland',
              city: 'Gothenbourg',
              country: 'Sweden'
          }
      ]
      )
    end
    it 'should return latitude' do
      results = Geocoder.search('Ostrahamngatan 5')
      lat = results[0].latitude
      expect(lat).to eq 57.70931634
    end
  end

  it 'geocodes on full_address' do
    details = {name: 'Spur',
               address: '35, Burger Avenue',
               city: 'Centurion',
               state: 'Gauteng',
               country: 'South Africa'}
    restaurant = create(:restaurant, details)
    expect(restaurant.full_address)
        .to eq '35, Burger Avenue, Centurion, Gauteng, South Africa'
    expect(restaurant.address_city_state_country_changed?).to be false
    expect(restaurant.address_city_state_country_present?).to be true
    expect(restaurant.latitude).to eq -25.837322
  end

  it 'does not geocode if part of address info is missing' do
    restaurant = build(:restaurant,
                                   address: nil)
    restaurant.save(validate: false)
    expect(restaurant.address_city_state_country_present?).to be false
    expect(restaurant.latitude).to eq 0.0
  end

  it 'geocodes on address change' do
    location = {name: 'Spur',
                address: '35, Burger Avenue',
                city: 'Centurion',
                state: 'Gauteng',
                country: 'South Africa'}
    restaurant = create(:restaurant, location)
    expect(restaurant.latitude).to eq -25.837322
    new_location = {address: 'Ostrahamngatan 5',
                    state: 'Vastra Gotaland',
                    city: 'Gothenbourg',
                    country: 'Sweden'}
    restaurant.update_attributes(new_location)
    expect(restaurant.latitude.round(7)).to eq 57.7093164
  end



end
  
