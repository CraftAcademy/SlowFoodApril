require 'rails_helper'

RSpec.describe Dish, type: :model do
  describe 'DB table Dish' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :description }
    it { is_expected.to have_db_column :price }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :price }
  end

  describe 'Associations' do
    it { is_expected.to belong_to :menu }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(FactoryGirl.create(:dish)).to be_valid
    end
  end
end
