require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  describe 'DB table Restaurant' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :address }
    it { is_expected.to have_db_column :email }
    it { is_expected.to have_db_column :phone }
    it { is_expected.to have_db_column :city  }
    it { is_expected.to have_db_column :state  }
    it { is_expected.to have_db_column :country  }
    it { is_expected.to have_db_column :latitude }
    it { is_expected.to have_db_column :longitude }
    it { is_expected.to have_db_column :description }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :address }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(FactoryGirl.create(:restaurant)).to be_valid
    end
  end
end
