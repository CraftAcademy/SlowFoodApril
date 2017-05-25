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
    params = {email: 'xavy@ibm.com', password: '12345678', password_confirmation: '12345678', restaurant_owner: true  }
    user = FactoryGirl.create(:user, params)
    let (:current_user) {user}
    it 'current_user should be restaurant_owner' do
      expect(current_user.restaurant_owner?).to be true
    end
  end
end
