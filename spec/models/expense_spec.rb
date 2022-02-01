require 'rails_helper'

RSpec.describe Expense, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe 'Test Expense Model' do

    test_user = User.new(name: 'TestUser')
    test_user_id = User.find_by(name: 'TestUser').id

    it 'is valid with all valid attributes present' do
      expect()
    end

    it 'is not valid without an amount' do

    end

    it 'is not valid without a date' do

    end

    it 'is not valid without a description' do

    end

    it 'is not valid without a category id' do

    end
  end
end
