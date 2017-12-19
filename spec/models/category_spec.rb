require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'factory' do
    it 'should have a valid factory' do
      expect(FactoryBot.build(:category)).to be_valid
    end
  end
  describe 'validations' do
    it 'should be invalid without name' do
      expect(FactoryBot.build(:category, name: nil)).to_not be_valid
    end
    it 'should be invalid with duplicate name' do
      @category = FactoryBot.create(:category)
      expect(FactoryBot.build(:category, name: @category.name)).to_not be_valid
    end
  end
end
