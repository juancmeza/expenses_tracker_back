class Expense < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :amount, :date, :description, :category_id, presence: {message: 'test'}

end
