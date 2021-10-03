require 'rails_helper'

RSpec.describe 'ManagementCenter::Order', type: :model do
  context 'Validations' do
    it 'has a valid factory' do
      order = FactoryBot.create(:orders)
      expect(order).to be_valid
    end

    it 'is invalid without a status' do
      order = FactoryBot.build(:orders, status: nil)
      expect(order).to be_invalid
    end
  end
end
