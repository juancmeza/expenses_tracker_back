require 'rails_helper'
require 'date'

RSpec.describe Expense, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe 'Test Expense Model' do

    before (:each) do
      @test_user = User.create(name: 'TestUser')
    end

    it 'is valid with all valid attributes present' do
      expect(Expense.create(amount: 10.0, date: Date.parse('2022-1-1'), description: 'TestExp', category_id: 1, user_id: @test_user.id)).to be_valid
    end

    it 'is not valid without an amount' do
      expect(Expense.create(date: Date.parse('2022-1-1'), description: 'TestExp', category_id: 1, user_id: @test_user.id)).to_not be_valid
    end

    it 'is not valid without a date' do
      expect(Expense.create(amount: 10.0, description: 'TestExp', category_id: 1, user_id: @test_user.id)).to_not be_valid
    end

    it 'is not valid without a description' do
      expect(Expense.create(amount: 10.0, date: Date.parse('2022-1-1'), category_id: 1, user_id: @test_user.id)).to_not be_valid
    end

    it 'is not valid without a category id' do
      expect(Expense.create(amount: 10.0, date: Date.parse('2022-1-1'), description: 'TestExp', user_id: @test_user.id)).to_not be_valid
    end

    it 'is not valid without a user id' do
      expect(Expense.create(amount: 10.0, date: Date.parse('2022-1-1'), description: 'TestExp', category_id: 1)).to_not be_valid
    end
  end
end
