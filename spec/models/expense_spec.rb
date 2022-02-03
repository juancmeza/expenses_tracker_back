require 'rails_helper'
require 'date'

RSpec.describe Expense, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe 'Test Expense Model' do

    test_user = User.new(name: 'TestUser')

    it 'is valid with all valid attributes present' do
      expect(Expense.new(amount: 10.0, date: Date.today, description: 'TestExp', category_id: 1))
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
