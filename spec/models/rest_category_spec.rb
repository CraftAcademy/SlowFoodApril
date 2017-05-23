require 'rails_helper'

RSpec.describe RestCategory, type: :model do
  describe 'DB table RestCategory' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :name }
  end

  describe 'Associations' do
    it { is_expected.to have_many :restaurants }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(FactoryGirl.create(:rest_category)).to be_valid
    end
  end
end
