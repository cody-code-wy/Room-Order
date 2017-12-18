require 'rails_helper'

RSpec.describe Account, type: :model do
  describe 'factory' do
    it 'should have a valid factory' do
      expect(FactoryBot.build(:account)).to be_valid
    end
  end

  describe 'validations' do
    it 'should be invalid without a name' do
      expect(FactoryBot.build(:account, name: nil)).to_not be_valid
    end
    it 'should be invalid with a duplicate name' do
      @account = FactoryBot.create(:account)
      expect(FactoryBot.build(:account, name: @account.name)).to_not be_valid
    end
    it 'should be valid without an email' do
      expect(FactoryBot.build(:account, email: nil)).to be_valid
    end
    it 'should be valid without a phone' do
      expect(FactoryBot.build(:account, phone: nil)).to be_valid
    end
    it 'should be valid without notes' do
      expect(FactoryBot.build(:account, notes: nil)).to be_valid
    end
  end
end
