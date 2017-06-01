require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'DB table User' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :email }
    it { is_expected.to have_db_column :encrypted_password }
    it { is_expected.to have_db_column :username }
    it { is_expected.to have_db_column :first_name }
    it { is_expected.to have_db_column :last_name }
    it { is_expected.to have_db_column :address }
    it { is_expected.to have_db_column :phone_number }
    it { is_expected.to have_db_column :admin }
    it { is_expected.to have_db_column :restaurant_owner }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :email }
    it { is_expected.to validate_presence_of :encrypted_password }
    it { is_expected.to validate_presence_of :username }
    it { is_expected.to validate_presence_of :first_name }
    it { is_expected.to validate_presence_of :last_name }
    it { is_expected.to validate_presence_of :address }
    it { is_expected.to validate_presence_of :phone_number }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(FactoryGirl.create(:user)).to be_valid
    end
  end

  describe 'Restaurant Owner role' do
    subject { FactoryGirl.create(:user, restaurant_owner: true ) }
    it 'should check that user is a restaurant_owner' do
      expect(subject.restaurant_owner?).to be true
    end
  end
end
