require 'rails_helper'

RSpec.describe Location, type: :model do
  describe 'factory' do
    it 'should have a valid factory' do
      expect(FactoryBot.build(:location)).to be_valid
    end
  end
  describe 'validations' do
    it 'should be invalid without a name' do
      expect(FactoryBot.build(:location, name: nil)).to_not be_valid
    end
    it 'should be invalid with a duplicate name' do
      @location = FactoryBot.create(:location)
      expect(FactoryBot.build(:location, name: @location.name)).to_not be_valid
    end
    it 'should be valid without a description' do
      expect(FactoryBot.build(:location, description: nil)).to be_valid
    end
  end
end
